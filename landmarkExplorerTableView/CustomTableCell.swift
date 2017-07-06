//
//  CustomTableCell.swift
//  landmarkExplorerTableView
//
//  Created by W.S. van Arkel jr. on 19-06-17.
//  Copyright © 2017 W.S. van Arkel jr. All rights reserved.
//

import UIKit

class CustomTableCell: UITableViewCell {


    @IBOutlet weak var cellCityImage: UIImageView!
    @IBOutlet weak var cellCityLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
