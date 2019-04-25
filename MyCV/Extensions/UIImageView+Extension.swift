//
//  UIImageView+Extension.swift
//  MyCV
//
//  Created by Serhiy Rosovskyy on 4/21/19.
//  Copyright © 2019 Serhiy Rosovskyy. All rights reserved.
//

import UIKit

extension UIImageView {

    func roundedBorder(_ number: Int) {
        self.layer.cornerRadius = CGFloat(number)
        self.clipsToBounds = true
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 4
    }

}
