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
    var url = ""
    
    // MARK: -IBOutlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var periodLabel: UILabel!
    @IBOutlet weak var additionalLabel: UILabel!
    @IBOutlet weak var showButton: UIButton!
    @IBOutlet weak var bartGif: UIImageView!
    @IBOutlet weak var letterGif: UIImageView!
    

    fileprivate func textConfiguration() {
        if (self.experience?.type == "Project") {
            self.nameLabel.text = "Name of the project: '\(self.experience?.name ?? "No info")'"
            self.periodLabel.text = "Spent time: \(self.experience?.period ?? "No info")"
            self.additionalLabel.text = "Technology used: \(self.experience?.work ?? "No info")"
        } else {
            self.nameLabel.text = "Name of the event: '\(self.experience?.name ?? "No info")'"
            self.periodLabel.text = "Period: \(self.experience?.period ?? "No info")"
            self.additionalLabel.text = "Responsibility: \(self.experience?.work ?? "No info")"
        }
    }

    fileprivate func gifConfiguration() {
        self.bartGif.loadGif(name: "bart")
        self.letterGif.loadGif(name: "letter")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textSettings()
        self.gifConfiguration()
        self.textConfiguration()
    }
    
    func textSettings() {
        self.nameLabel.lineBreakMode = .byWordWrapping
        self.nameLabel.numberOfLines = 0
        self.additionalLabel.lineBreakMode = .byWordWrapping
        self.additionalLabel.numberOfLines = 0
        self.periodLabel.lineBreakMode = .byWordWrapping
        self.periodLabel.lineBreakMode = NSLineBreakMode(rawValue: 0)!
    }
    

    // MARK: -Actions
    @IBAction func testTapped(_ sender: Any) {
        self.url = experience!.url
        performSegue(withIdentifier: "sourceDummy", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SourceViewController
        vc.finalURL = self.url
    }

}
