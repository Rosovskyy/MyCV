//
//  SourceViewController.swift
//  MyCV
//
//  Created by Serhiy Rosovskyy on 5/4/19.
//  Copyright © 2019 Serhiy Rosovskyy. All rights reserved.
//

import UIKit
import WebKit

class SourceViewController: UIViewController {
    
    // MARK: -Properties
    var finalURL = ""
    
    // MARK: -IBOutlets
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let request = URLRequest(url: URL(string: finalURL)!)
        self.webView.load(request)
        
        self.webView.addObserver(self, forKeyPath: #keyPath(WKWebView.isLoading), options: .new, context: nil)
        // Do any additional setup after loading the view.
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "loading" {
            if webView.isLoading {
                activityIndicator.startAnimating()
                activityIndicator.isHidden = false
            } else {
                activityIndicator.stopAnimating()
                activityIndicator.isHidden = true
            }
        }
    }
    
    // MARK: -Actions
    @IBAction func backTapped(_ sender: Any) {
        performSegue(withIdentifier: "sourceBackDummy", sender: self)
    }
    
}
