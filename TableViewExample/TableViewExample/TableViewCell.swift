//
//  TableViewCell.swift
//  TableViewExample
//
//  Created by SP08 on 8/4/16.
//  Copyright © 2016 SP08. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imgPrototype: UIView!
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var tituloPrototype: UILabel!
    @IBOutlet weak var subTituloPrototype: UILabel!
    @IBOutlet weak var precioPrototype: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
