//
//  TitleDescriptionView.swift
//  AnimationForOnboard
//
//  Created by Валерий Игнатьев on 30.09.2021.
//

import SwiftUI

struct TitleDescriptionView: View {
    var on: Bool
    var off: Bool
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Мой звездный онборд")
                .font(withBang() ? .largeTitle : .title3)
                .bold()
                .lineLimit(2)
                .opacity(on ? 1 : 0)
                .animation(on ? .easeIn(duration: 1).delay(0.4) : nil, value: off)
            
            Text("Именно такой как я хотел!\nТри дня назад это было невозможно!")
                .font(withBang() ? .title : .body)
                .lineLimit(5)
                .opacity(on ? 1 : 0)
                .animation(on ? .easeIn(duration: 1).delay(1) : nil, value: off)
        }
        .foregroundColor(.white)
        .multilineTextAlignment(.center)
        .padding()
    }
}
