//
//  BFCIndexViewController.swift
//  BFC
//
//  Created by anirudh on 16/03/16.
//  Copyright © 2016 Aman. All rights reserved.
//

import UIKit

class BFCIndexViewController: BFCBaseViewController {

    @IBOutlet weak var customizeWorkoutTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
     BFCUtility.leftArrowNavigationBarButton(self)
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
