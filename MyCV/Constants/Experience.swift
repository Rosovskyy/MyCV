//
//  Experience.swift
//  MyCV
//
//  Created by Serhiy Rosovskyy on 4/24/19.
//  Copyright © 2019 Serhiy Rosovskyy. All rights reserved.
//

import Foundation


struct Experience {
    let name: String
    let work: String
    let period: String
    // let volunteering: [Volunteering] = []
    // let project: [Project] = []
}

struct Volunteering {
    let name: String
    let period: String
    let work: String
}

struct Project {
    let name: String
    let time: Int
    let technologies: String
}
