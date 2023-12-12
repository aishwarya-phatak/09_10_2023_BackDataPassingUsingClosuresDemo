//
//  StudentTableViewCell.swift
//  09_10_2023_BackDataPassingUsingClosuresDemo
//
//  Created by Vishal Jagtap on 12/12/23.
//

import UIKit

class StudentTableViewCell: UITableViewCell {

    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var middleNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
