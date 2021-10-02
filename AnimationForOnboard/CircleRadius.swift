//
//  CircleRadius.swift
//  AnimationForOnboard
//
//  Created by Валерий Игнатьев on 02.10.2021.
//

import SwiftUI

class CircleRadius {
    private var screen = UIScreen.main.bounds
    
    private var withBang: Bool {
        screen.height > 750
    }
    
    var bigDiament: CGFloat {
        screen.width - (withBang ? 100 : 60)
    }
    
    private var bigRadius: CGFloat {
        bigDiament / 2
    }
    
    var smallDiametr: CGFloat {
        bigDiament - (withBang ? 100 : 80)
    }
    
    private var smallRadius: CGFloat {
        smallDiametr / 2
    }
    
    private var ringWidth: CGFloat {
        (bigRadius - smallRadius)
    }
    
    private var ringCenter: CGFloat {
        smallRadius + ringWidth / 2
    }
    
    ///Смещение внутрь от краев кольца
    private var offset: Double {
        return .random(in: (-ringWidth / 2 + 5)...(ringWidth / 2 - 5))
    }
    
    ///Расчет радномной точки внутри кольца
    func pointsOnCircle() -> CGSize {
        let point = ringCenter + offset
        let degress = Int.random(in: 0...360)
        let x = point * cos(Double(degress))
        let y = point * sin(Double(degress))

        return CGSize(width: x, height: y)
    }
}
