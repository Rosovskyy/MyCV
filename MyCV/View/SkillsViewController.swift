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
    let swiftLevel = 7
    let jsLevel = 6
    let cLevel = 8
    let mySQLLevel = 9
    
    // MARK: -IBOutlets
    @IBOutlet weak var swiftProgressView: UIProgressView!
    @IBOutlet weak var jsProgressView: UIProgressView!
    @IBOutlet weak var cProgressView: UIProgressView!
    @IBOutlet weak var mySQLProgressView: UIProgressView!
    @IBOutlet weak var explenationLabel: UIStackView!
    @IBOutlet weak var nyanCatGif: UIImageView!
    

    fileprivate func progressConfiguration() {
        transform(swiftProgressView, self.swiftLevel)
        transform(jsProgressView, self.jsLevel)
        transform(cProgressView, self.cLevel)
        transform(mySQLProgressView, self.mySQLLevel)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.progressConfiguration()
        self.nyanCatGif.loadGif(name: "nyancat")
    }
    
    func transform(_ view: UIProgressView, _ progress: Int) {
        self.progress.completedUnitCount = Int64(progress)
        
        view.transform = view.transform.scaledBy(x: CGFloat(1),
                                                 y: CGFloat(5))
        
        view.progress = 0
        
        let progressFloat = Float(self.progress.fractionCompleted)
        view.setProgress(progressFloat, animated: true)
    }
    
}
