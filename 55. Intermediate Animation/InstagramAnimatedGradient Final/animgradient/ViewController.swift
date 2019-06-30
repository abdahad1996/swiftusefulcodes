//
//  ViewController.swift
//  animgradient
//
//
/*
 MIT License
 
 Copyright (c) 2019 Gwinyai Nyatsoka
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

import UIKit

class ViewController: UIViewController {
    
    let gradient = CAGradientLayer()
    
    var gradientSet = [[CGColor]]()
    
    var currentGradient = 0
    
    let gradientOne = UIColor(red: 48/255, green: 62/255, blue: 103/255, alpha: 1.0).cgColor
    
    let gradientTwo = UIColor(red: 244/255, green: 88/255, blue: 53/255, alpha: 1.0).cgColor
    
    let gradientThree = UIColor(red: 196/255, green: 70/255, blue: 107/255, alpha: 1.0).cgColor

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        gradientSet.append([gradientOne, gradientTwo])
        
        gradientSet.append([gradientTwo, gradientThree])
        
        gradientSet.append([gradientThree, gradientOne])
        
        gradient.colors = gradientSet[currentGradient]
        
        gradient.startPoint = CGPoint(x: 0, y: 0)
        
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        gradient.drawsAsynchronously = true
        
        view.layer.addSublayer(gradient)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        gradient.frame = view.bounds
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        animateGradient()
        
    }
    
    func animateGradient() {
        
        var previousGradient: Int!
        
        if currentGradient < gradientSet.count - 1 {
            
            currentGradient += 1
            
            previousGradient = currentGradient - 1
            
        }
        else {
            
            currentGradient = 0
            
            previousGradient = gradientSet.count - 1
            
        }
        
        let gradientChangeAnim = CABasicAnimation(keyPath: "colors")
        
        gradientChangeAnim.duration = 5.0
        
        gradientChangeAnim.fromValue = gradientSet[previousGradient]
        
        gradientChangeAnim.toValue = gradientSet[currentGradient]
        
        gradient.setValue(currentGradient, forKeyPath: "colorChange")
        
        gradientChangeAnim.delegate = self
        
        gradient.add(gradientChangeAnim, forKey: nil)
        
    }

}

extension ViewController: CAAnimationDelegate {
    
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        
        if flag {
            
            if let colorChange = gradient.value(forKey: "colorChange") as? Int {
                
                gradient.colors = gradientSet[colorChange]
                
                animateGradient()
                
            }
            
        }
        
    }
    
    
}

