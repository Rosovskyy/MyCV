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
    static let projects = [
        Experience(type: "Project", name: "Foober", work: "Swift, Firebase", period: "3 days", url: "NONE"),
        Experience(type: "Project", name: "Problem Solver", work: "Python, Django, MongoDB", period: "25 days", url: "NONE"),
    ]
    
    static let volunteering = [
        Experience(type: "Volunteering", name: "Data Science Summer School", work: "Orginiser", period: "16.07.2018 - 02.08.2018", url: "https://apps.ucu.edu.ua/summerschool/"),
        Experience(type: "Volunteering", name: "IT-Arena 2018", work: "Communicating with people", period: "29.09.2018 - 01.10.2018", url: "https://itarena.ua/")
    ]
    
    // MARK: -IBOutlets
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableFooterView = UIView()
        self.tableView.rowHeight = 90
        
        self.tableView.reloadData()
        
        tableView.dataSource = self
        tableView.delegate = self

        let nibName = UINib(nibName: "ExperienceShowTableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "experienceShowTableViewCell")
    }
}

extension ExperienceViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return ExperienceViewController.projects.count
        case 1: return ExperienceViewController.volunteering.count
        default: fatalError()
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "experienceShowTableViewCell") as! ExperienceShowTableViewCell
        
        switch indexPath.section {
        case 0: cell.commonInit(exp: ExperienceViewController.projects[indexPath.row])
        case 1: cell.commonInit(exp: ExperienceViewController.volunteering[indexPath.row])
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
//            switch tableView.numberOfSections {
            
            destination.experience = ExperienceViewController.volunteering[(tableView.indexPathForSelectedRow?.row)!]
//            case 1: destination.experience = ExperienceViewController.volunteering[(tableView.indexPathForSelectedRow?.row)!]
//            default: fatalError()
//            }
        }
    }
    
}
