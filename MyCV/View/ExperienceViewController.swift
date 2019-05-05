//
//  ExperienceViewController.swift
//  MyCV
//
//  Created by Serhiy Rosovskyy on 4/24/19.
//  Copyright © 2019 Serhiy Rosovskyy. All rights reserved.
//

import UIKit

class ExperienceViewController: UIViewController {
    
    // MARK: -Properties
    let data = SelfExperience()
    let cellId = "experienceShowTableViewCell"
    let nib = "ExperienceShowTableViewCell"
    
    // MARK: -IBOutlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var rainbowGif: UIImageView!
    

    fileprivate func tableConfiguration() {
        tableView.tableFooterView = UIView()
        self.tableView.rowHeight = 90

        self.tableView.reloadData()

        self.tableView.dataSource = self
        self.tableView.delegate = self

        let nibName = UINib(nibName: self.nib, bundle: nil)
        self.tableView.register(nibName, forCellReuseIdentifier: self.cellId)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.rainbowGif.loadGif(name: "rainbow")
        self.tableConfiguration()
    }
}

extension ExperienceViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return self.data.projects.count
        case 1: return self.data.volunteering.count
        default: fatalError()
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cellId) as! ExperienceShowTableViewCell
        switch indexPath.section {
        case 0: cell.commonInit(exp: self.data.projects[indexPath.row])
        case 1: cell.commonInit(exp: self.data.volunteering[indexPath.row])
        default: fatalError()
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "PROJECTS"
        case 1: return "VOLUNTEERING"
        default: fatalError()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showExperienceInfoDummy", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? InfoViewController {
            switch (tableView.indexPathForSelectedRow?.section) {
            case 0: destination.experience = self.data.projects[(tableView.indexPathForSelectedRow?.row)!]
            case 1: destination.experience = self.data.volunteering[(tableView.indexPathForSelectedRow?.row)!]
            default: fatalError()
            }
        }
    }
    
}
