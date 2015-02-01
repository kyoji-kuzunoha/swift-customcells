//
//  TVCCellA.swift
//  customCells
//
//  Created by kyoji_kuzunoha on 2015/01/31.
//  Copyright (c) 2015年 kyoji_kuzunoha. All rights reserved.
//

import UIKit

class TVCCellA: UITableViewCell {
    
    @IBOutlet weak var cellAView: UIView!
    @IBOutlet weak var cellATextLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
