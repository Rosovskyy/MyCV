//
//  InfoText.swift
//  MyCV
//
//  Created by Serhiy Rosovskyy on 4/21/19.
//  Copyright © 2019 Serhiy Rosovskyy. All rights reserved.
//

import Foundation


struct InfoText {
    let aboutMe = "Ukrainian Catholic University student(Computer Science). I have confident knowledge of object-oriented programming, data structures, and in particular: Swift, C++ and HTML/CSS. Analytical skills and the ability to solve complex technical problems. I get saticfaction every time my code works. \nI'm looking for an interesting and varied projects and people with the same type of thinking."
    
    let education = "Ukrainian Catholic University \nComputer Science \n\n IOS Technology stack: \n ▪️ Swift \n ▪️ UIKit \n ▪️ Firebase \n ▪️ CoreData \n ▪️ MapKit"
    
    let contacts = " phone number: +380993153160 \n\n email: rosovskyy@ucu.edu.ua \n\n Linkedin: Serhii Rosovskyi"
}


struct SelfExperience {
    let projects = [
        Experience(type: "Project",
                   name: "Foober",
                   work: "Swift, Firebase",
                   period: "3 days",
                   url: "https://github.com/Rosovskyy/fuber"),
        Experience(type: "Project",
                   name: "Problem Solver",
                   work: "Python, Django, MongoDB",
                   period: "25 days",
                   url: "https://github.com/Rosovskyy/courseWorkBySerhiyRosovskyy"),
    ]
    
    let volunteering = [
        Experience(type: "Volunteering",
                   name: "Data Science Summer School",
                   work: "Orginiser",
                   period: "16.07.2018 - 02.08.2018",
                   url: "https://apps.ucu.edu.ua/summerschool/"),
        Experience(type: "Volunteering",
                   name: "IT-Arena 2018",
                   work: "Communicating with people",
                   period: "29.09.2018 - 01.10.2018",
                   url: "https://itarena.ua/")
    ]
}
