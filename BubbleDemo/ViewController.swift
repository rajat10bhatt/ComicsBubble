//
//  ViewController.swift
//  BubbleDemo
//
//  Created by Rajat on 2/19/18.
//  Copyright © 2018 None. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bubbleView: UIView!
    @IBOutlet weak var bubbleViewLabel: UILabel!
    
    let path = UIBezierPath()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        path.addArc(withCenter: CGPoint(x: 10, y: 10), radius: 10, startAngle: CGFloat(180).toRadians(), endAngle: CGFloat(270).toRadians(), clockwise: true)
        path.addLine(to: CGPoint(x: self.bubbleView.frame.width - 10, y: 0))
        path.addArc(withCenter: CGPoint(x: self.bubbleView.frame.width - 10, y: 10), radius: 10, startAngle: CGFloat(270).toRadians(), endAngle: CGFloat(0).toRadians(), clockwise: true)
//        path.addLine(to: CGPoint(x: self.bubbleView.frame.width, y: 15))
//        path.addLine(to: CGPoint(x: self.bubbleView.frame.width + 20, y: 25))
//        path.addLine(to: CGPoint(x: self.bubbleView.frame.width, y: 35))
        path.addLine(to: CGPoint(x: self.bubbleView.frame.width, y: self.bubbleView.frame.height - 10))
        path.addArc(withCenter: CGPoint(x: self.bubbleView.frame.width - 10, y: self.bubbleView.frame.height - 10), radius: 10, startAngle: CGFloat(0).toRadians(), endAngle: CGFloat(90).toRadians(), clockwise: true)
        path.addLine(to: CGPoint(x: 10, y: self.bubbleView.frame.height))
        path.addArc(withCenter: CGPoint(x: 10, y: self.bubbleView.frame.height - 10), radius: 10, startAngle: CGFloat(90).toRadians(), endAngle: CGFloat(180).toRadians(), clockwise: true)
        path.addLine(to: CGPoint(x: 0, y: 35))
        path.addLine(to: CGPoint(x: -20, y: 25))
        path.addLine(to: CGPoint(x: 0, y: 15))
        path.addLine(to: CGPoint(x: 0, y: 10))
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.fillColor = UIColor.black.cgColor
        self.bubbleView.layer.addSublayer(shapeLayer)
        self.bubbleView.bringSubview(toFront: bubbleViewLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension CGFloat {
    func toRadians() -> CGFloat {
        return self * CGFloat(Double.pi) / 180
    }
}
