//
//  GlareOfLight.swift
//  AnimationForOnboard
//
//  Created by Валерий Игнатьев on 30.09.2021.
//

import SwiftUI

struct GlareOfLight: View {
    var circle = CircleRadius()
    
    var on: Bool
    var off: Bool

    var delay: Double {
        Double.random(in: 1...2)
    }

    var duration: Double {
        Double.random(in: 0.1...1)
    }
    
    internal init(_ on: Bool, _ off: Bool) {
        self.on = on
        self.off = off
    }
    
    var body: some View {
        Circle()
            .fill(.white).opacity(Double.random(in: 0.8...1))
            .blur(radius: 1)
            .offset(on ? circle.pointsOnCircle() : .zero)
            .animation(nil)
            .opacity(off ? 1 : 0)
            .frame(width: on ? CGFloat(Int.random(in: 1...3)) : 0)
            .animation(on ? .easeInOut(duration: duration).delay(delay).repeatForever(autoreverses: true) : nil,
                       value: off)
    }
}
