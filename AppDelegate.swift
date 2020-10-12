//
//  AppDelegate.swift
//  Parsetagram
//
//  Created by christopher cruz on 10/7/20.
//

import UIKit
import Parse
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
          let parseConfig = ParseClientConfiguration {
          $0.applicationId = "xksHvEWXY5LPO06twTSOJwI9mhMlo2k28FXNTqv3"
          $0.clientKey = "HsZsSZewgGrTnByaGRXrkH48etTH6SFfMEUzNtqm"
          $0.server = "https://parseapi.back4app.com"
      }
      Parse.initialize(with: parseConfig)
        if PFUser.current() != nil {
            let main = UIStoryboard(name: "Main", bundle: nil)
            let feedNavigationController = main.instantiateViewController(withIdentifier: "FeedNavigationController")
            window?.rootViewController = feedNavigationController
        }
        return true
    };
        
        // --- end copy


    

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}
