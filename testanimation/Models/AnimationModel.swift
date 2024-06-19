//
//  AnimationModel.swift
//  testanimation
//
//  Created by Денис Александров on 18.06.2024.
//

import UIKit

struct AnimationModel {
    let name: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    static func randomAnimation(animations: [String], curves: [String]) -> AnimationModel {
        return AnimationModel(
            name: animations.randomElement()!,
            curve: curves.randomElement()!,
            force: CGFloat.random(in: 0.5...2.0),
            duration: CGFloat.random(in: 0.5...2.0),
            delay: CGFloat.random(in: 0.0...1.0)
        )
    }
}
