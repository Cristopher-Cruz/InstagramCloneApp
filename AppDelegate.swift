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


    // AppDelegate.swift
    private func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
      let parseConfig = ParseClientConfiguration {
          $0.applicationId = "BCrUQVkk80pCdeImSXoKXL5ZCtyyEZwbN7mAb11f"
          $0.clientKey = "rWFPEbTs7UzkaVsIXnQ4qmmr9oWqwXfiiJehtIZu"
          $0.server = "https://parseapi.back4app.com"
      }
      Parse.initialize(with: parseConfig)
        return true
    }
   
        
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

