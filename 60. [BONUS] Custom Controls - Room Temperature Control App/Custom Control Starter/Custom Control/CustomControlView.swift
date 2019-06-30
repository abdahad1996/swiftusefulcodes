//
//  CustomControlView.swift
//  Custom Control
//
//

import Foundation

import UIKit

class CustomControlView: UIControl {

    let backdropLayer: CAShapeLayer = CAShapeLayer()
    
    let tempreatureLabel = UILabel()
    
    let ringWidth: CGFloat = CGFloat(40.0)
    
    var textFont: UIFont = UIFont.boldSystemFont(ofSize: 40)
    
    let maxTempreature: Double = 30
    
    private var textFontSize: CGFloat {
        
        return textFont.pointSize
        
    }
    
    var halfRingWidth: CGFloat {
        
        return ringWidth / 2
        
    }
    
    private var centerPoint: CGPoint {
        
        return CGPoint(x: self.frame.size.width / 2, y: self.frame.size.height / 2)
        
    }
    
    private var radius: CGFloat {
        
        return bounds.height / 2 - (ringWidth / 2.0)
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        tempreatureLabel.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(tempreatureLabel)
        
        tempreatureLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        tempreatureLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        tempreatureLabel.textAlignment = NSTextAlignment.center
        
        tempreatureLabel.font = textFont
        
        tempreatureLabel.textColor = UIColor.black
        
        tempreatureLabel.text = "0º"
        
    }
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        let circlePath: CGPath = UIBezierPath(ovalIn: CGRect(x: halfRingWidth, y: halfRingWidth, width: bounds.width - ringWidth, height: bounds.height - ringWidth)).cgPath
        
        backdropLayer.path = circlePath
        
        backdropLayer.lineWidth = ringWidth
        
        backdropLayer.strokeEnd = 1.0
        
        backdropLayer.fillColor = nil
        
        backdropLayer.strokeColor = UIColor(red: 112/255, green: 25/255, blue: 18/255, alpha: 1.0).cgColor
        
        layer.addSublayer(backdropLayer)
        
    }

}

private extension Double {
    
    func degreesToRadians() -> Double {
        
        return self * Double.pi / 180.0
        
    }
    
    func radiansToDegrees() -> Double {
        
        return self * 180.0 / Double.pi
        
    }
    
}


