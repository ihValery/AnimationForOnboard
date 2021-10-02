//
//  SmallBackgroundCircle.swift
//  AnimationForOnboard
//
//  Created by Валерий Игнатьев on 30.09.2021.
//

import SwiftUI

struct SmallBackgroundCircle: View {
    var circle = CircleRadius()
    
    var on: Bool
    var off: Bool
    
    internal init(_ on: Bool, _ off: Bool) {
        self.on = on
        self.off = off
    }
    
    var body: some View {
        Circle()
            .fill(
                RadialGradient(colors: [.black, .white], center: .center, startRadius: 0, endRadius: 80)
            ).opacity(0.2)
            .scaleEffect(on ? 1 : 0)
            .frame(width: circle.smallDiametr)
            .animation(on ? .spring(dampingFraction: 0.6).delay(0.5) : nil,
                       value: off)
            .opacity(off ? 1 : 0)
    }
}
