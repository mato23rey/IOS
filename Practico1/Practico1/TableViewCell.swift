//
//  TableViewCell.swift
//  Practico1
//
//  Created by SP08 on 22/4/16.
//  Copyright © 2016 SP08. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
   
    @IBOutlet weak var imgCell: UIImageView!
    @IBOutlet weak var lblDescuento: UILabel!
    @IBOutlet weak var lblNombreProducto: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

