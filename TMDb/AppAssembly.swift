//
//  AppAssembly.swift
//  TMDb
//
//  Created by Andres on 14/11/17.
//  Copyright © 2017 Guille Gonzalez. All rights reserved.
//

import Foundation
import TMDbCore // modulo de Core

//para que el comiplador cree codigo mas eficiente
final class AppAssembly{

    private(set) lazy var window = UIWindow(frame: UIScreen.main.bounds)
    
    private(set) lazy var navigationController = UINavigationController()
    
    private(set) lazy var coreAssembly = CoreAssembly(navigationController : navigationController)
    
    //aqui podemos customizar la barra de navegaicion
    

    
}


