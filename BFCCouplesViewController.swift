//
//  BFCCouplesViewController.swift
//  BFC
//
//  Created by Aman on 3/12/16.
//  Copyright © 2016 Aman. All rights reserved.
//

import UIKit

class BFCCouplesViewController: BFCBaseViewController , UIApplicationDelegate {
    
    var window: UIWindow?
    
    @IBOutlet weak var girlImageView: UIImageView!
    @IBOutlet weak var boyImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         self.navigationController?.navigationBarHidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func boyImageAction(sender: AnyObject) {
        window = UIWindow()
        let containerViewController = ContainerViewController()
        window!.rootViewController = containerViewController
        self.window!.makeKeyAndVisible()

    }
    
    @IBAction func girlImageAction(sender: AnyObject) {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        let containerViewController = ContainerViewController()
        window!.rootViewController = containerViewController
        window!.makeKeyAndVisible()
    }
    
}
