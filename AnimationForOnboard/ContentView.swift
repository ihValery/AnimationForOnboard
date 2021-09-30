//
//  ContentView.swift
//  AnimationForOnboard
//
//  Created by Валерий Игнатьев on 29.09.2021.
//

import SwiftUI

struct ContentView: View {
    @State var animate: Bool = false
    @State var noAnimation: Bool = false
    var radius: CGFloat {
        UIScreen.main.bounds.width - (withBang() ? 100 : 60)
    }
    
    var body: some View {
        VStack {
            VStack {
                ZStack {
                    BigBackgroundCircle(radius: radius, on: animate, off: noAnimation)

                    SmallBackgroundCircle(radius: radius, on: animate, off: noAnimation)
                    
                    ForEach(0...1000, id: \.self) { _ in
                        GlareOfLight(radius: radius, on: animate, off: noAnimation)
                    }
                    
                    Text("🐶")
                        .font(.system(size: withBang() ? 180 : 130))
                        .scaleEffect(animate ? 1 : 0.4)
                        .animation(animate ? .spring(dampingFraction: 0.4) : .default,
                                   value: noAnimation)
                }
                
                TitleDescriptionView()

                Spacer(minLength: withBang() ? 50 : 20)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                LinearGradient(colors: [.blue, .purple], startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(25)
            .padding()
            
            StartButton() {
                animate.toggle()
                noAnimation = animate ? !noAnimation : false
            }
        }
        .drawingGroup()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
