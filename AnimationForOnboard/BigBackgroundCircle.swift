//
//  BigBackgroundCircle.swift
//  AnimationForOnboard
//
//  Created by Валерий Игнатьев on 30.09.2021.
//

import SwiftUI

struct BigBackgroundCircle: View {
    var radius: CGFloat
    var on: Bool
    var off: Bool
    
    var body: some View {
        Circle()
            .fill(.white).opacity(0.1)
            .scaleEffect(on ? 1 : 0)
            .frame(width: radius)
            .animation(on ? .spring(dampingFraction: 0.4).delay(0.2) : nil,
                       value: off)
            .opacity(off ? 1 : 0)
    }
}
