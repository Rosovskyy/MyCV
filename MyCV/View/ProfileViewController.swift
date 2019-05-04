//
//  ProfileViewController.swift
//  MyCV
//
//  Created by Serhiy Rosovskyy on 4/21/19.
//  Copyright © 2019 Serhiy Rosovskyy. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    // MARK: -Properties
    let text = InfoText()
    
    // MARK: -IBOutlets
    @IBOutlet weak var mainText: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var aboutMeButton: UIButton!
    @IBOutlet var allButtons: [UIButton]!
    @IBOutlet weak var nyanCatGif: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.profileImage.roundedBorder(40)
        
        self.mainText.lineBreakMode = .byWordWrapping
        self.mainText.numberOfLines = 0
        
        self.mainText.attributedText = changeTextColor(self.text.aboutMe, "Swift, C++ and HTML/CSS", UIColor.blue)
        
        self.nyanCatGif.loadGif(name: "b04")
    
        self.aboutMeButton.setBottomBorder(UIColor.orange)
    }
    
    func changeBackgroundForButtons(_ sender: Any) {
        let sender = sender as? UIButton
        sender!.setBottomBorder(UIColor.orange)
        
        for button in allButtons.filter({$0 != sender}) {
            button.setBottomBorder(UIColor.white)
            if let viewWithTag = self.view.viewWithTag(100) {
                viewWithTag.removeFromSuperview()
            }
        }
    }
    
    func changeTextColor(_ fullText: String, _ part: String, _ color: UIColor) -> NSMutableAttributedString {
        let range = (fullText as NSString).range(of: part as String)
        
        let attribute = NSMutableAttributedString.init(string: fullText)
        attribute.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
        
        return attribute
    }
    
    
    // MARK: -Actions
    
    @IBAction func aboutMeTapped(_ sender: Any) {
        changeBackgroundForButtons(sender)
        
        aboutMeButton.setBottomBorder(UIColor.orange)
        
        self.mainText.attributedText = changeTextColor(self.text.aboutMe, "Swift, C++ and HTML/CSS", UIColor.blue)
    }
    
    @IBAction func educationTapped(_ sender: Any) {
        changeBackgroundForButtons(sender)
        
        self.mainText.text = self.text.education
    }
    
    
    @IBAction func contactsTapped(_ sender: Any) {
        
        changeBackgroundForButtons(sender)
        
        self.mainText.text = self.text.contacts
        
    }
    
}
