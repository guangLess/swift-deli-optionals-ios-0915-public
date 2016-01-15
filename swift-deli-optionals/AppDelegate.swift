//  AppDelegate.swift

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        /**

        * Call your functions here.

        */
        
        
        
        
        let nilArray : [String]? = ["Victoria", "Danny", "Lyel"] //[]
        let ios:[String]? = ["Joe", "Tim", "Jim", "Tom"]

        
        stringForDeliLine(nilArray)
        

        
        var addArray : [String]? = []

        addArray = addName("guang", toDeliLine: nil)
        print(addArray)
        
        
        serveNextCustomerInDeliLine(ios)
        
        // Do not alter
        return true  //
    }   //////////////
}       /////////////

