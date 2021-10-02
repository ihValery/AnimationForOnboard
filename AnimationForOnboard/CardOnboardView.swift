//
//  CardOnboardView.swift
//  AnimationForOnboard
//
//  Created by Валерий Игнатьев on 29.09.2021.
//

import SwiftUI

struct CardOnboardView: View {
    var circle = CircleRadius()
    
    @State var animationON: Bool = false
    @State var animationOff: Bool = false
    
    var body: some View {
        VStack {
            VStack {
                ZStack {
                    BigBackgroundCircle(animationON, animationOff)

                    SmallBackgroundCircle(animationON, animationOff)
                    
                    ForEach(0...29, id: \.self) { _ in
                        GlareOfLight(animationON, animationOff)
                    }
                    
                    Text("🐶")
                        .font(.system(size: withBang() ? 180 : 130))
                        .scaleEffect(animationON ? 1 : 0.4)
                        .animation(animationON ? .spring(dampingFraction: 0.4) : .default,
                                   value: animationOff)
                    
                    StarFlare()
                        .offset(circle.pointsOnCircle())
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
            
            .onAppear {
                animationON = false
                animationOff = false
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    animationON = true
                    animationOff = true
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CardOnboardView()
            .preferredColorScheme(.dark)
    }
}
