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

    
    @IBOutlet weak var sidePanelView: UITableView!

    var animals: Array<MenuData>!
    struct TableView {
        struct CellIdentifiers {
            static let AnimalCell = "SideMenuCell"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        sidePanelView.registerNib(UINib(nibName:"BFCSidePanelTableViewCell", bundle: nil), forCellReuseIdentifier: "SideMenuCell")
        sidePanelView.reloadData()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
            }
            
        }


