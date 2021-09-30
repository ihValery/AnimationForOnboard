//
//  GlareOfLight.swift
//  AnimationForOnboard
//
//  Created by Валерий Игнатьев on 30.09.2021.
//

import SwiftUI

struct GlareOfLight: View {
    var radius: CGFloat
    var on: Bool
    var off: Bool
    var delay: Double {
        Double.random(in: 1...2)
    }
    var offset: Double {
        Double(Int.random(in: (withBang() ? 20 : 10)...(withBang() ? 80 : 70)))
    }
    var duration: Double {
        Double.random(in: 0.1...1)
    }
    
    var body: some View {
        Circle()
            .fill(.white).opacity(Double.random(in: 0.8...1))
            .blur(radius: 1)
            .offset(on ? pointsOnCircle() : .zero)
            .animation(nil)
            .opacity(off ? 1 : 0)
            .frame(width: on ? CGFloat(Int.random(in: 1...3)) : 0)
            .animation(on ? .easeInOut(duration: duration).delay(delay).repeatForever(autoreverses: true) : nil, value: off)
    }
    
    private func pointsOnCircle() -> CGSize {
        let newRadius = (radius - offset) / 2
        let degress = Int.random(in: 0...360)
        let x = newRadius * cos(Double(degress))
        let y = newRadius * sin(Double(degress))

        return CGSize(width: x, height: y)
    }
}
