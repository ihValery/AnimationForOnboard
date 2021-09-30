//
//  StartButton.swift
//  AnimationForOnboard
//
//  Created by Валерий Игнатьев on 29.09.2021.
//

import SwiftUI

struct StartButton: View {
    var active: () -> Void
    
    var body: some View {
        Button {
            active()
        } label: {
            Text("S   t   a   r   t")
                .foregroundColor(.white)
                .font(.largeTitle)
                .padding(.vertical)
                .frame(maxWidth: .infinity)
                .background(RoundedRectangle(cornerRadius: 25)
                                .fill(.purple))
                .padding(.horizontal)
        }
    }
}
