//
//  InfoViewController.swift
//  MyCV
//
//  Created by Serhiy Rosovskyy on 4/24/19.
//  Copyright © 2019 Serhiy Rosovskyy. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    // MARK: -Properties
    var experience: Experience? = nil
    
    // MARK: -IBOutlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var periodLabel: UILabel!
    @IBOutlet weak var additionalLabel: UILabel!
    @IBOutlet weak var showButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        config()

        if (experience?.type == "Project") {
            nameLabel.text = "Name of the project: '\(experience?.name ?? "No info")'"
            periodLabel.text = "Spent time: \(experience?.period ?? "No info")"
            additionalLabel.text = "Technology used: \(experience?.work ?? "No info")"
        } else {
            nameLabel.text = "Name of the event: '\(experience?.name ?? "No info")'"
            periodLabel.text = "Period: \(experience?.period ?? "No info")"
            additionalLabel.text = "Responsibility: \(experience?.work ?? "No info")"
        }
        
        // Do any additional setup after loading the view.
    }
    
    func config() {
        nameLabel.lineBreakMode = .byWordWrapping
        nameLabel.numberOfLines = 0
        additionalLabel.lineBreakMode = .byWordWrapping
        additionalLabel.numberOfLines = 0
        periodLabel.lineBreakMode = .byWordWrapping
        periodLabel.lineBreakMode = NSLineBreakMode(rawValue: 0)!
    }
    

    // MARK: -Actions
    @IBAction func testTapped(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: experience!.url)! as URL, options: [:], completionHandler: nil)
    }
    

}
