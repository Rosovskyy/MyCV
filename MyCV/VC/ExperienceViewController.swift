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
    let projects = [
        Experience(name: "Foober", work: "Swift, Firebase", period: "3 days"),
        Experience(name: "Problem Solver", work: "Python, Django, MongoDB", period: "25 days"),
    ]
    
    let volunteering = [
        Experience(name: "Data Science Summer School", work: "Orginiser", period: "16.07.2018 - 02.08.2018"),
        Experience(name: "IT-Arena 2018", work: "Communicating with people", period: "29.09.2018 - 01.10.2018")
    ]
    
    // MARK: -IBOutlets
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableFooterView = UIView()
        self.tableView.rowHeight = 60
        
        self.tableView.reloadData()
        
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }
}

extension ExperienceViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return projects.count
        case 1: return volunteering.count
        default: fatalError()
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        
        switch indexPath.section {
        case 0: cell.textLabel?.text = "\(projects[indexPath.row].name)"
        case 1: cell.textLabel?.text = "\(volunteering[indexPath.row].name)"
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
    
}
