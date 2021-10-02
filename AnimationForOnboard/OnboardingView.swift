//
//  OnboardingView.swift
//  AnimationForOnboard
//
//  Created by Валерий Игнатьев on 01.10.2021.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            ForEach(0..<4) { item in
                CardOnboardView()
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

struct TabViewOnboard_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
