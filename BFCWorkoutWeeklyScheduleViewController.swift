//
//  BFCWorkoutWeeklyScheduleViewController.swift
//  BFC
//
//  Created by Aman on 3/12/16.
//  Copyright © 2016 Aman. All rights reserved.
//

import UIKit

class BFCWorkoutWeeklyScheduleViewController: BFCBaseViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
         BFCUtility.leftArrowNavigationBarButton(self)
  self.tableView.registerNib(UINib(nibName: "BFCExerciseWorkoutDetailTableViewCell", bundle: nil), forCellReuseIdentifier: "ExerciseDetailCell")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

extension BFCWorkoutWeeklyScheduleViewController: UITableViewDataSource , UITableViewDelegate {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ExerciseDetailCell" , forIndexPath: indexPath) as! BFCExerciseWorkoutDetailTableViewCell
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("DayPlanExercisesIdentifier", sender: nil)
    }
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
}
