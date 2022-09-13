//
//  ViewController.swift
//  Core Animation
//
//  Created by Carl Karama on 7/9/22.
//

import UIKit

class ViewController: UIViewController {

    let coreAnimationLayer = CALayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coreAnimationLayer.backgroundColor = UIColor.systemRed.cgColor
        coreAnimationLayer.frame = CGRect(x: 100, y: 100, width: 120, height: 120)
        view.layer.addSublayer(coreAnimationLayer)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+3) {
            self.animateMovements()
        }
    }
    
    func animateMovements() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.fromValue = CGPoint(x: coreAnimationLayer.frame.origin.x + (coreAnimationLayer.frame.width/2),
                                      y: coreAnimationLayer.frame.origin.y + (coreAnimationLayer.frame.height/2))
        animation.toValue = CGPoint(x: 300, y: 400)
        animation.duration = 3
        animation.fillMode = .forwards // decides what to do when the animation is finished
        animation.isRemovedOnCompletion = false //
        animation.beginTime = CACurrentMediaTime()
        coreAnimationLayer.add(animation, forKey: nil)
        
    }
}

