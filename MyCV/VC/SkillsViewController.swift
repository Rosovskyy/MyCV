//
//  SkillsViewController.swift
//  MyCV
//
//  Created by Serhiy Rosovskyy on 4/24/19.
//  Copyright © 2019 Serhiy Rosovskyy. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {
    
    // MARK: -Properties
    let progress = Progress(totalUnitCount: 10)
    
    // MARK: -IBOutlets
    @IBOutlet weak var swiftProgressView: UIProgressView!
    @IBOutlet weak var jsProgressView: UIProgressView!
    @IBOutlet weak var cProgressView: UIProgressView!
    @IBOutlet weak var mySQLProgressView: UIProgressView!
    @IBOutlet weak var explenationLabel: UIStackView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        transform(swiftProgressView, 7)
        transform(jsProgressView, 6)
        transform(cProgressView, 7)
        transform(mySQLProgressView, 9)
        
        explenationLabel.layer.borderColor = UIColor.green.cgColor
        explenationLabel.layer.borderWidth = 3.0

        // Do any additional setup after loading the view.
    }
    
    func transform(_ view: UIProgressView, _ progress: Int) {
        self.progress.completedUnitCount = Int64(progress)
        
        view.transform = view.transform.scaledBy(x: 1, y: 5)
        
        view.progress = 0
        
        let progressFloat = Float(self.progress.fractionCompleted)
        view.setProgress(progressFloat, animated: true)
    }
    
    
    // MARK: -Actions


}
