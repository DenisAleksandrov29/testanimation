//
//  AnimationData.swift
//  testanimation
//
//  Created by Денис Александров on 19.06.2024.
//

import Foundation

struct AnimationData {
    static let animations = ["pop", "slideLeft", "slideRight", "slideDown", "slideUp",
                             "squeezeLeft", "squeezeRight", "squeezeDown", "squeezeUp",
                             "fadeIn", "fadeOut", "fadeOutIn", "fadeInLeft",
                             "fadeInRight", "fadeInDown", "fadeInUp", "zoomIn",
                             "zoomOut", "fall", "shake", "flipX", "flipY", "morph",
                             "squeeze", "flash", "wobble", "swing"]
    
    static let curves = ["easeOut", "easeInOut", "linear", "spring", "easeInSine",
                         "easeInSine", "easeOutSine", "easeInOutSine", "easeInQuad",
                         "easeOutQuad", "easeInOutQuad", "easeInCubic", "easeOutCubic",
                         "easeInOutCubic", "easeInQuart", "easeOutQuart", "easeInOutQuart",
                         "easeInQuint", "easeOutQuint", "easeInOutQuint", "easeInOutQuint",
                         "easeInExpo", "easeOutExpo", "easeInOutExpo", "easeInCirc",
                         "easeInCirc", "easeOutCirc", "easeInOutCirc", "easeInBack",
                         "easeOutBack", "easeInOutBack"]
}

