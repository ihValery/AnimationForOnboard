//
//  BigBackgroundCircle.swift
//  AnimationForOnboard
//
//  Created by Валерий Игнатьев on 30.09.2021.
//

import SwiftUI

struct BigBackgroundCircle: View {
    var circle = CircleRadius()
    
    var on: Bool
    var off: Bool
    
    internal init(_ on: Bool, _ off: Bool) {
        self.on = on
        self.off = off
    }
    
    var body: some View {
        Circle()
            .fill(.white.opacity(0.1))
            .scaleEffect(on ? 1 : 0)
            .frame(width: circle.bigDiament)
            .animation(on ? .spring(dampingFraction: 0.4).delay(0.2) : nil,
                       value: off)
            .opacity(off ? 1 : 0)
    }
}
