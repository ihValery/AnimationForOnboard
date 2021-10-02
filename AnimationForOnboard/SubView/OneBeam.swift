//
//  OneBeam.swift
//  AnimationForOnboard
//
//  Created by Валерий Игнатьев on 02.10.2021.
//

import SwiftUI

struct OneBeam: View {
    var on: Bool
    var beamLength: CGFloat
    var beamHeight: CGFloat
    
    init(_ on: Bool, _ beamLength: CGFloat, _ beamHeight: CGFloat) {
        self.on = on
        self.beamLength = beamLength
        self.beamHeight = beamHeight
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 1)
            .fill(LinearGradient(colors: [.white.opacity(0), .white, .white.opacity(0)],
                                 startPoint: .leading, endPoint: .trailing))
            .frame(width: beamLength, height: beamHeight)
            .scaleEffect(on ? 1 : 0)
            .opacity(on ? 1 : 0)
    }
}
