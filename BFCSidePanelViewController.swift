		//
//  BFCSidePanelViewController.swift
//  BFC
//
//  Created by Aman on 3/12/16.
//  Copyright © 2016 Aman. All rights reserved.
//

import UIKit

        @objc
        protocol MenuViewControllerDelegate {
            // func animalSelected(animal: Animal)
        }

class BFCSidePanelViewController: BFCBaseViewController {
    @IBOutlet weak var tableViewCell: UITableView!
    
    var animals: Array<MenuData>!
    struct TableView {
        struct CellIdentifiers {
            static let AnimalCell = "SideMenuCell"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewCell.registerNib(UINib(nibName:"BFCSidePanelTableViewCell", bundle: nil), forCellReuseIdentifier: "SideMenuCell")
        tableViewCell.reloadData()
        
    }
    
    func changeLanguage() {
        let actionSheet = UIAlertController(title: "Edit", message: nil, preferredStyle: UIAlertControllerStyle.ActionSheet)
        actionSheet.addAction(UIAlertAction(title: "Arabic", style: UIAlertActionStyle.Default, handler:  {(UIAlertAction) -> Void in
            print("Arabic")
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Hindi", style: .Default, handler: { (UIAlertAction) -> Void in
            print("Hindi")
        }))
        actionSheet.addAction(UIAlertAction(title: "English", style: .Default, handler: { (UIAlertAction) -> Void in
            print("English")
        }))
        actionSheet.addAction(UIAlertAction(title: "French", style: .Default, handler: { (UIAlertAction) -> Void in
            print("French")
        }))
        actionSheet.addAction(UIAlertAction(title: "Chinese", style: .Default, handler: { (UIAlertAction) -> Void in
            print("Chinese")
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))
        presentViewController(actionSheet, animated:true, completion:nil)
        
    }
    
    func shareyourApp() {
        let textToShare = "Look at this awesome iOS App !"
        let  myWebsite:NSURL = NSURL(string: "http://www.Tykoon.com/")!
        let img:UIImage = UIImage(named: "BoyCouplesImage")!
        let objectsToShare = [textToShare, myWebsite, img];
        
        let activityVC:UIActivityViewController = UIActivityViewController.init(activityItems: objectsToShare, applicationActivities: nil) //[[UIActivityViewController alloc] initWithActivityItems:objectsToShare applicationActivities:nil];
        
        let excludeActivities = [UIActivityTypeAirDrop,
            UIActivityTypePrint,
            UIActivityTypeAssignToContact,
            UIActivityTypeSaveToCameraRoll,
            UIActivityTypeAddToReadingList,
            UIActivityTypePostToFlickr,
            UIActivityTypePostToVimeo,
            UIActivityTypeOpenInIBooks];
        
        activityVC.excludedActivityTypes = excludeActivities;
        
        self.presentViewController(activityVC, animated: true) { () -> Void in
            
        }
    }
    
    
        }
        
        extension BFCSidePanelViewController: UITableViewDataSource {
            
            func numberOfSectionsInTableView(tableView: UITableView) -> Int {
                return 1
            }
            
            func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                return animals.count
            }
            
            func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
                let cell = tableView.dequeueReusableCellWithIdentifier(TableView.CellIdentifiers.AnimalCell, forIndexPath: indexPath) as!BFCSidePanelTableViewCell
                cell.configureForData(animals[indexPath.row])
                return cell
            }
            func animalSelected(menudata: MenuData){
                
            }
        }
        extension BFCSidePanelViewController: UITableViewDelegate {
            
            func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
                switch indexPath.row {
                case 0:
                    let bfcCouplesView = BFCCouplesViewController()
                    presentViewController(bfcCouplesView, animated: true, completion: nil)
                    
                case 1: 
                    // segue for Customize your Workout
                    performSegueWithIdentifier("BFCindexsegue", sender: self)
                    
                case 2:
                    changeLanguage()
                case 3:
                    //                    rate us
                    print("")
                case 4:
                    shareyourApp()
                case 5:
                    // remove adds
                    performSegueWithIdentifier("BFCindexsegue", sender: self)
                    print("")
                default:
                    print("")
                }
            }
            
        }
