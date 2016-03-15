//
//  BFCExerciseWorkoutViewController.swift
//  BFC
//
//  Created by Aman on 3/12/16.
//  Copyright © 2016 Aman. All rights reserved.
//

import UIKit


protocol BFCExerciseWorkoutViewControllerDelegate {
    func toggleLeftPanel()
    
}
class BFCExerciseWorkoutViewController: BFCBaseViewController {
    //var isLoaded = false
    var delegate:BFCExerciseWorkoutViewControllerDelegate?
    
    @IBAction func menuButton(sender: AnyObject) {
        delegate?.toggleLeftPanel()
    }
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBOutlet weak var strengthImage: BFCImage!
    @IBOutlet weak var yogaImage: BFCImage!
    @IBOutlet weak var cardioImage: BFCImage!
    @IBOutlet weak var strechingImage: BFCImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentImageLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func segmentImageLoad(){
        switch self.segmentControl.selectedSegmentIndex {
        case 0:
            strengthImage.image = UIImage(named: "strength_image")
            yogaImage.image = UIImage(named: "yoga_image")
            cardioImage.image = UIImage(named: "cardio_image")
            strechingImage.image = UIImage(named: "guy-stretching_image")
        case 1:
            strengthImage.image = UIImage(named: "strength_image")
            yogaImage.image = UIImage(named: "yoga_image")
            cardioImage.image = UIImage(named: "cardio_image")
            strechingImage.image = UIImage(named: "guy-stretching_image")
        default:
            print("")
        }
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
