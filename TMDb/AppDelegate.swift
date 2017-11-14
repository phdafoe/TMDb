//
//  AppDelegate.swift
//  TMDb
//
//  Created by Guille Gonzalez on 21/09/2017.
//  Copyright © 2017 Guille Gonzalez. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	let appAssembly = AppAssembly()


	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //Me creo el VC inicial
        let initialViewController = appAssembly.coreAssembly.featuredAssembly.viewController()
        
        //Hago el push
        appAssembly.navigationController.pushViewController(initialViewController, animated: false)
        
        //Hago el navC como root
        appAssembly.window.rootViewController = appAssembly.navigationController
        
        //Obligatorio
        appAssembly.window.makeKeyAndVisible()
        return true
	}

	


}

