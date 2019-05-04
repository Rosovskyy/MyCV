//
//  ExperienceShowTableViewCell.swift
//  MyCV
//
//  Created by Serhiy Rosovskyy on 4/25/19.
//  Copyright © 2019 Serhiy Rosovskyy. All rights reserved.
//

import UIKit


class ExperienceShowTableViewCell: UITableViewCell {
    
    // MARK: -Properties
    
    
    // MARK: -IBOutlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var periodLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: -Initialization
    
    func commonInit(exp: Experience) {
        self.nameLabel.text = exp.name
        self.periodLabel.text = exp.period
    }
    
}
