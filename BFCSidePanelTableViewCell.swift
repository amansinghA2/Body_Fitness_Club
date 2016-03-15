//
//  BFCSidePanelTableViewCell.swift
//  BFC
//
//  Created by Aman on 3/12/16.
//  Copyright © 2016 Aman. All rights reserved.
//

import UIKit

class BFCSidePanelTableViewCell: UITableViewCell {

    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellLabelView: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configureForData(menuData: MenuData) {
       cellLabelView.text = menuData.title
        cellImageView.image = menuData.image
    }
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
