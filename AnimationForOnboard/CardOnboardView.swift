//
//  CardOnboardView.swift
//  AnimationForOnboard
//
//  Created by Валерий Игнатьев on 29.09.2021.
//

import SwiftUI

struct CardOnboardView: View {
    @State var animationON: Bool = false
    @State var animationOff: Bool = false
    var radius: CGFloat {
        UIScreen.main.bounds.width - (withBang() ? 100 : 60)
    }
    
    var body: some View {
        VStack {
            VStack {
                ZStack {
                    BigBackgroundCircle(radius, animationON, animationOff)

                    SmallBackgroundCircle(radius, animationON, animationOff)
                    
                    ForEach(0...500, id: \.self) { _ in
                        GlareOfLight(radius, animationON, animationOff)
                    }
                        
                    Text("🐶")
                        .font(.system(size: withBang() ? 180 : 130))
                        .scaleEffect(animationON ? 1 : 0.4)
                        .animation(animationON ? .spring(dampingFraction: 0.4) : .default,
                                   value: animationOff)
                }
                
                TitleDescriptionView(animationON, animationOff)

                Spacer(minLength: withBang() ? 50 : 20)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                LinearGradient(colors: [.blue, .purple], startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(25)
            .padding()
            
            StartButton() {
                animationON.toggle()
                animationOff = animationON ? !animationOff : false
            }
        }
        .drawingGroup()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CardOnboardView()
            .preferredColorScheme(.dark)
    }
}
