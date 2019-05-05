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
    

    fileprivate func textConfiguration() {
        self.mainText.lineBreakMode = .byWordWrapping
        self.mainText.numberOfLines = 0

        self.mainText.text = NSLocalizedString("aboutMeInfo", comment: "About Me Info")
    }

    fileprivate func viewsBorderConfiguration() {
        self.profileImage.roundedBorder(40)
        self.aboutMeButton.setBottomBorder(UIColor.orange)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textConfiguration()
        self.viewsBorderConfiguration()
        self.nyanCatGif.loadGif(name: "nyancat")
    
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
    
    // MARK: -Actions
    
    @IBAction func aboutMeTapped(_ sender: Any) {
        changeBackgroundForButtons(sender)
        
        aboutMeButton.setBottomBorder(UIColor.orange)
        
        self.mainText.text = NSLocalizedString("aboutMeInfo", comment: "About Me Info")
    }
    
    @IBAction func educationTapped(_ sender: Any) {
        changeBackgroundForButtons(sender)
        
        self.mainText.text = NSLocalizedString("educationInfo", comment: "Education Info") // self.text.education
    }
    
    
    @IBAction func contactsTapped(_ sender: Any) {
        
        changeBackgroundForButtons(sender)
        
        self.mainText.text = NSLocalizedString("contactsInfo", comment: "Contacts info")
        
    }
    
}
