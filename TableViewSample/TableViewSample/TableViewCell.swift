//
//  TableViewCell.swift
//  TableViewSample
//
//  Created by Sundir Talari on 07/07/18.
//  Copyright © 2018 Sundir Talari. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var textLbl: UILabel!
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var imgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
