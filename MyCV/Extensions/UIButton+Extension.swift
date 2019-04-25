//
//  UIButton+Extension.swift
//  MyCV
//
//  Created by Serhiy Rosovskyy on 4/21/19.
//  Copyright © 2019 Serhiy Rosovskyy. All rights reserved.
//

import UIKit

extension UIButton {

    func setBottomBorder(_ color: UIColor) {
        let lineView = UIView(frame: CGRect(x: 0, y: self.frame.size.height, width: self.frame.size.width, height: 2))
        lineView.tag = 100
        lineView.backgroundColor = color
        self.addSubview(lineView)
    }

}
