   import UIKit
   
   class MenuData: NSObject {
    let title: String
    let image: UIImage?
    
    init(image: UIImage? , title: String) {
        self.image = image
        self.title = title
    }
    
    class func menuData() -> [MenuData] {
        return [ MenuData(image: UIImage(named: "GirlCouplesImage") , title: "HOME"),
            MenuData(image: UIImage(named: "GirlCouplesImage") , title: "Customize your Workout"),
            MenuData(image: UIImage(named: "GirlCouplesImage") , title: "Select Language"),
            MenuData(image: UIImage(named: "GirlCouplesImage") , title: "RateUS"),
            MenuData(image: UIImage(named: "GirlCouplesImage") , title: "Share"),
            MenuData(image: UIImage(named: "GirlCouplesImage") , title: "Remove Ads")]
        //            MenuData(image: UIImage(named: "ID-10034505.jpg") , title: ""),
        //            MenuData(image: UIImage(named: "ID-10034505.jpg") , title: "")]
    }
   }
