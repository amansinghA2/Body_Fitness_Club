//
//  ContainerViewController.swift
//  SlideOutNavigation
//
//  Created by James Frost on 03/08/2014.
//  Copyright (c) 2014 James Frost. All rights reserved.
//

import UIKit
import QuartzCore

enum SlideOutState{
    case BothCollapsed
    case LeftPanelExpanded
}
class ContainerViewController: UIViewController {
    
    var centerNavigationController: UINavigationController!
    var centerViewController: BFCExerciseWorkoutViewController!
  //var currentState: SlideOutState = .BothCollapsed
    var leftViewController: BFCSidePanelViewController?
    
    let centerPanelExpandedOffset: CGFloat = 60
    
    var currentState: SlideOutState = .BothCollapsed {
        didSet {
            let shouldShowShadow = currentState != .BothCollapsed
            showShadowForCenterViewController(shouldShowShadow)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        centerViewController = UIStoryboard.centerViewController()
        centerViewController.delegate1 = self
        
        // wrap the centerViewController in a navigation controller, so we can push views to it
        // and display bar button items in the navigation bar
        centerNavigationController = UINavigationController(rootViewController: centerViewController)
        view.addSubview(centerNavigationController.view)
        addChildViewController(centerNavigationController)
        
        centerNavigationController.didMoveToParentViewController(self)
        
//        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: "handlePanGesture:")
//        centerNavigationController.view.addGestureRecognizer(panGestureRecognizer)
    }
    
}

//extension ContainerViewController: UIGestureRecognizerDelegate {
//    // MARK: Gesture recognizer
//    
//    func handlePanGesture(recognizer: UIPanGestureRecognizer) {
//        let gestureIsDraggingFromLeftToRight = (recognizer.velocityInView(view).x > 0)
//        
//        switch(recognizer.state) {
//        case .Began:
//            if (currentState == .BothCollapsed) {
//                if (gestureIsDraggingFromLeftToRight) {
//                    addLeftPanelViewController()
//                }
//                
//                showShadowForCenterViewController(true)
//            }
//        case .Changed:
//            recognizer.view!.center.x = recognizer.view!.center.x + recognizer.translationInView(view).x
//            recognizer.setTranslation(CGPointZero, inView: view)
//        case .Ended:
//            if (leftViewController != nil) {
//                // animate the side panel open or closed based on whether the view has moved more or less than halfway
//                let hasMovedGreaterThanHalfway = recognizer.view!.center.x > view.bounds.size.width
//                animateLeftPanel(hasMovedGreaterThanHalfway)
//            }
//        default:
//            break
//        }
//    }
//}

private extension UIStoryboard {
    class func mainStoryboard() -> UIStoryboard { return UIStoryboard(name: "Main", bundle: NSBundle.mainBundle()) }
    
    class func leftViewController() ->BFCSidePanelViewController? {
        return mainStoryboard().instantiateViewControllerWithIdentifier("LeftViewController") as? BFCSidePanelViewController
    }
    
    
    class func centerViewController() -> BFCExerciseWorkoutViewController? {
        return mainStoryboard().instantiateViewControllerWithIdentifier("CenterViewController") as? BFCExerciseWorkoutViewController
    }
    
}

extension ContainerViewController: BFCExerciseWorkoutViewControllerDelegate {
    
    func toggleLeftPanel() {
        let notAlreadyExpanded = (currentState != .LeftPanelExpanded)
        if notAlreadyExpanded {
            addLeftPanelViewController()
        }
        animateLeftPanel(notAlreadyExpanded)
    }
    
    
    func addLeftPanelViewController() {
        if (leftViewController == nil) {
            leftViewController = UIStoryboard.leftViewController()
            leftViewController!.animals = MenuData.menuData()
            
            addChildSidePanelController(leftViewController!)
        }
    }
    
    func addChildSidePanelController(sidePanelController: BFCSidePanelViewController) {
        view.insertSubview(sidePanelController.view, atIndex: 0)
        
        addChildViewController(sidePanelController)
        sidePanelController.didMoveToParentViewController(self)
    }
    
    
    
    func animateLeftPanel(shouldExpand: Bool) {
        if (shouldExpand) {
            currentState = .LeftPanelExpanded
            
            animateCenterPanelXPosition(targetPosition: CGRectGetWidth(centerNavigationController.view.frame) - centerPanelExpandedOffset)
        } else {
            animateCenterPanelXPosition(targetPosition: 0) { finished in
                self.currentState = .BothCollapsed
                
                self.leftViewController!.view.removeFromSuperview()
                self.leftViewController = nil;
            }
        }
    }
    
    func animateCenterPanelXPosition(targetPosition targetPosition: CGFloat, completion: ((Bool) -> Void)! = nil) {
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .CurveEaseInOut, animations: {
            self.centerNavigationController.view.frame.origin.x = targetPosition
            }, completion: completion)
    }
    
    func showShadowForCenterViewController(shouldShowShadow: Bool) {
        if (shouldShowShadow) {
            centerNavigationController.view.layer.shadowOpacity = 0.8
        } else {
            centerNavigationController.view.layer.shadowOpacity = 0.0
        }
    }
    
}