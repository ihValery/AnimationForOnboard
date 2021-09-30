//
//  SmallBackgroundCircle.swift
//  AnimationForOnboard
//
//  Created by Валерий Игнатьев on 30.09.2021.
//

import SwiftUI

struct SmallBackgroundCircle: View {
    var radius: CGFloat
    var on: Bool
    var off: Bool
    
    var body: some View {
        Circle()
            .fill(
                RadialGradient(colors: [.black, .white], center: .center, startRadius: 0, endRadius: 80)
            ).opacity(0.2)
            .scaleEffect(on ? 1 : 0)
            .frame(width: radius - (withBang() ? 100 : 80))
            .animation(on ? .spring(dampingFraction: 0.6).delay(0.5) : nil,
                       value: off)
            .opacity(off ? 1 : 0)
    }
}
