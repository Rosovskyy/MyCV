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
    @IBOutlet weak var nyanCatGif: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nyanCatGif.loadGif(name: "b04")
        
        transform(swiftProgressView, 7, 1, 5)
        transform(jsProgressView, 6, 1, 5)
        transform(cProgressView, 7, 1, 5)
        transform(mySQLProgressView, 9, 1, 5)
        
        // Do any additional setup after loading the view.
    }
    
    func transform(_ view: UIProgressView, _ progress: Int, _ x: Int, _ y: Int) {
        self.progress.completedUnitCount = Int64(progress)
        
        view.transform = view.transform.scaledBy(x: CGFloat(x), y: CGFloat(y))
        
        view.progress = 0
        
        let progressFloat = Float(self.progress.fractionCompleted)
        view.setProgress(progressFloat, animated: true)
    }
    
    
    // MARK: -Actions


}
