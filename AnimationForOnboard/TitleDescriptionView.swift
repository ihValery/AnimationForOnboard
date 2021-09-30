//
//  TitleDescriptionView.swift
//  AnimationForOnboard
//
//  Created by Валерий Игнатьев on 30.09.2021.
//

import SwiftUI

struct TitleDescriptionView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Мой звездный онборд")
                .font(withBang() ? .largeTitle : .title3)
                .bold()
                .lineLimit(2)
            
            Text("Именной такой как я хотел!, три дня назад это было невозможно!")
                .font(withBang() ? .title : .body)
                .lineLimit(5)
        }
        .foregroundColor(.white)
        .multilineTextAlignment(.center)
        .padding()
    }
}
