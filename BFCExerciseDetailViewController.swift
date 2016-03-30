//
//  BFCExerciseDetailViewController.swift
//  BFC
//
//  Created by Aman on 3/12/16.
//  Copyright © 2016 Aman. All rights reserved.
//

import UIKit
import CoreData

class BFCExerciseDetailViewController: BFCBaseViewController {
    @IBOutlet var tableView: UITableView!
    
    var bodyPartsArray = [NSManagedObject]()
    
//    var bodyParts:StrengthBodyParts!{
//        didSet{
//            
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BFCUtility.leftArrowNavigationBarButton(self)
        self.tableView.registerNib(UINib(nibName: "BFCExerciseWorkoutDetailTableViewCell", bundle: nil), forCellReuseIdentifier: "ExerciseDetailCell")
        // Do any additional setup after loading the view.
        getBodyPartsList()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getBodyPartsList(){
       DataManager.strengthBodyParts { (isSuccessful, error) -> Void in
        if(isSuccessful){
          //  self.bodyPartsArray = bodyPart as! [NSManagedObject]
            self.fetchBodyPartsList()
        }else{
            print(error)
        }
        }
    }
    
    func fetchBodyPartsList(){
        let dataStack = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        let fetchRequest = NSFetchRequest(entityName: "StrengthBodyParts")
        
        let sortDescriptor = NSSortDescriptor(key: "bodyName", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
       
        do {
            let results = try dataStack.executeFetchRequest(fetchRequest) as AnyObject
            self.bodyPartsArray = results as! [NSManagedObject]
        } catch {
            print("Error fetching data")
        }
    }
    
}

extension BFCExerciseDetailViewController: UITableViewDataSource , UITableViewDelegate {
        
        func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            return 1
        }
        
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return self.bodyPartsArray.count
        }
        
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("ExerciseDetailCell" , forIndexPath: indexPath) as! BFCExerciseWorkoutDetailTableViewCell
            
//            cell.exerciseDetailLabel.text = bodyPartsArray[indexPath.row] as? String
            let bodyParts = bodyPartsArray[indexPath.row] as! StrengthBodyParts
            cell.bodyParts = bodyParts
            
            return cell
        }
        
        func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
            performSegueWithIdentifier("BodypartExercisesIdentifier", sender: nil)
        }

        func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
            return UITableViewAutomaticDimension
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
