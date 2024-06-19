//
//  ViewController.swift
//  testanimation
//
//  Created by Денис Александров on 17.06.2024.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    @IBOutlet weak var animatedView: SpringView!
    
    @IBOutlet weak var animationNameLabel: UILabel!
    @IBOutlet weak var animationCurveLabel: UILabel!
    @IBOutlet weak var animationForceLabel: UILabel!
    @IBOutlet weak var animationDurationLabel: UILabel!
    @IBOutlet weak var animationDelayLabel: UILabel!
    
    @IBOutlet weak var animateButton: UIButton!

    var nextAnimation: AnimationModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        setRandomAnimation()
    }
    @IBAction func animateButtonTapped(_ sender: UIButton) {
        if let animation = nextAnimation {
            updateAnimationInfo(animation)
            performAnimation(animation)
        }
    }
    private func setRandomAnimation() {
        let randomAnimation = AnimationModel.randomAnimation(animations: AnimationData.animations, curves: AnimationData.curves)
        setAnimation(randomAnimation)
    }
    private func setAnimation(_ animation: AnimationModel) {
        updateAnimationInfo(animation)
        prepareNextAnimation()
    }
    private func updateAnimationInfo(_ animation: AnimationModel) {
        animationNameLabel.text = "Animation: \(animation.name)"
        animationCurveLabel.text = "Curve: \(animation.curve)"
        animationForceLabel.text = "Force: \(String(format: "%.2f", animation.force))"
        animationDurationLabel.text = "Duration: \(String(format: "%.2f", animation.duration))"
        animationDelayLabel.text = "Delay: \(String(format: "%.2f", animation.delay))"
    }
    private func performAnimation(_ animation: AnimationModel) {
        animatedView.animation = animation.name
        animatedView.curve = animation.curve
        animatedView.force = animation.force
        animatedView.duration = animation.duration
        animatedView.delay = animation.delay
        animatedView.animate()
        
        animatedView.animateNext {
            self.prepareNextAnimation()
        }
    }
    private func prepareNextAnimation() {
        nextAnimation = AnimationModel.randomAnimation(animations: AnimationData.animations, curves: AnimationData.curves)
        animateButton.setTitle("Next: \(nextAnimation!.name)", for: .normal)
    }
}
