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
class BFCExerciseWorkoutViewController: BFCBaseViewController  , UIApplicationDelegate {
    var window: UIWindow?
    var delegate1:BFCExerciseWorkoutViewControllerDelegate?
    
    @IBAction func menuButton(sender: AnyObject) {
        delegate1?.toggleLeftPanel()
    }
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBOutlet weak var strengthImage: UIImageView!
    @IBOutlet weak var yogaImage: UIImageView!
    @IBOutlet weak var cardioImage: UIImageView!
    @IBOutlet weak var strechingImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentImageLoad()
        imageOpacity()
    }
    
    override func viewWillAppear(animated: Bool) {
   
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func strengthImageAction(sender: AnyObject) {
    imageSegue()
    }
    
    @IBAction func yogaImageAction(sender: AnyObject) {
    imageSegue()
    }
    
    @IBAction func cardioImageAction(sender: AnyObject) {
    imageSegue()
    }
    
    @IBAction func stretchingImageAction(sender: AnyObject) {
    imageSegue()
    }
    
    @IBAction func segmentControlAction(sender: AnyObject) {
    segmentImageLoad()
    }
    
    func segmentImageLoad(){
        switch self.segmentControl.selectedSegmentIndex {
        case 0:
            strengthImage.image = UIImage(named: "strength_image")
            yogaImage.image = UIImage(named: "yoga_image")
            cardioImage.image = UIImage(named: "cardio_image")
            strechingImage.image = UIImage(named: "guy-stretching_image")
        case 1:
            strengthImage.image = UIImage(named: "workout1")
            yogaImage.image = UIImage(named: "workout2")
            cardioImage.image = UIImage(named: "workout3")
            strechingImage.image = UIImage(named: "workout4")
        default:
            print("")
        }
    }
    
    func imageSegue() {
        switch segmentControl.selectedSegmentIndex {
        case 0:
            performSegueWithIdentifier("ExerciseDetailIdentifier", sender: nil)
        case 1:
            performSegueWithIdentifier("WorkoutDetailIdentifier", sender: nil)
        default:
            print("")
      }
    }
    
    func imageOpacity(){
         self.strengthImage.layer.shadowOpacity = 1.0
         self.yogaImage.layer.shadowOpacity = 1.0
         self.cardioImage.layer.shadowOpacity = 1.0
         self.strechingImage.layer.shadowOpacity = 1.0
    }
}
