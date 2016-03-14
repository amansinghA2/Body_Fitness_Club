//
//  BFCSidePanelTableViewCell.swift
//  BFC
//
//  Created by Aman on 3/12/16.
//  Copyright © 2016 Aman. All rights reserved.
//

import UIKit

class BFCSidePanelTableViewCell: UITableViewCell {

    @IBOutlet weak var menuCellImage: UIImageView!
    
    @IBOutlet weak var labelCell: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configureForData(menuData: MenuData) {
        labelCell.text = menuData.title
        menuCellImage.image = menuData.image
    }


    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
