//
//  ColorOK.swift
//  AdtnFramework
//
//  Created by mostafa on 6/1/19.
//  Copyright © 2019 shalhi. All rights reserved.
//

import Foundation

public func randomColor() -> UIColor {   // this using \\
    return .randomColorrr()
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func randomColorrr() -> UIColor {
        return UIColor(displayP3Red: .random(), green: .random(), blue: .random(), alpha: 1.0)
    }
}
//-------------------------------------------------------


extension UIButton {
    @objc public  var bakBtn: UIColor? {
        get { return self.backgroundColor! }
        set {
            if backgroundColor == nil {
                layer.cornerRadius = 0
                layer.shadowRadius = 0
                layer.shadowColor = UIColor.clear.cgColor
                layer.shadowRadius = 0
                self.backgroundColor = UIColor.clear
                layer.shadowOpacity = 0.0
                return
            }
            if backgroundColor !=  nil && backgroundColor !=  UIColor.clear && backgroundColor != .red  {
                self.backgroundColor = newValue
                layer.cornerRadius = 4
                layer.shadowRadius = 1
                layer.shadowColor = UIColor.darkGray.cgColor
                layer.shadowRadius = 8
                layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
                layer.shadowOpacity = 0.8
                self.setTitleColor(UIColor.white, for: .normal)
            }
        }
    }
}


//--------------------------
extension UILabel {
    @objc public  var iText: String? {
        get { return self.text! }
        set {
            if text == "" {
                layer.cornerRadius = 0
                layer.shadowRadius = 0
                layer.shadowColor = UIColor.clear.cgColor
                layer.shadowRadius = 0
                self.backgroundColor = UIColor.red
                layer.shadowOpacity = 0.0
                self.text = "Shal Hi"
                return
            } else {
                self.text = "Gooooood"
            }
        }
    }
}

