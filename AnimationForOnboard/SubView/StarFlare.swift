//
//  StarFlare.swift
//  AnimationForOnboard
//
//  Created by Валерий Игнатьев on 01.10.2021.
//

import SwiftUI

struct StarFlare: View {
    @State var on: Bool = false

    var beamLength: CGFloat {
        withBang() ? 70 : 50
    }
    
    var body: some View {
        ZStack {
            Circle()
                .fill(.white)
                .frame(width: on ? (withBang() ? 6 : 5) : 0)
            
            OneBeam(on, beamLength, 1)
            
            OneBeam(on, beamLength / 3, 2)
            
            OneBeam(on, beamLength, 1).rotationEffect(.degrees(90))
            
            OneBeam(on, beamLength / 3, 2).rotationEffect(.degrees(90))
        }
        .animation(on ? .easeOut(duration: 0.6) : .easeIn(duration: 0.2), value: on)
        
        .onAppear {
            on = false
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                on = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                    on = false
                }
            }
        }
    }
}

struct StarFlare_Previews: PreviewProvider {
    static var previews: some View {
        StarFlare(on: false)
    }
}
