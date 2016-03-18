//
//  BFCExerciseWorkoutDetailTableViewCell.swift
//  BFC
//
//  Created by aman on 16/03/16.
//  Copyright © 2016 Aman. All rights reserved.
//

import UIKit

class BFCExerciseWorkoutDetailTableViewCell: UITableViewCell {

    @IBOutlet var exerciseDetailImage: UIImageView!
    @IBOutlet var exerciseDetailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.exerciseDetailImage.layer.masksToBounds = true
        self.exerciseDetailImage.layer.cornerRadius = CGRectGetWidth(self.exerciseDetailImage.frame)/25.0
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
