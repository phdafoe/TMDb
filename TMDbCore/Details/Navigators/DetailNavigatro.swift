//
//  DetailNavigatro.swift
//  TMDbCore
//
//  Created by Andres on 14/11/17.
//  Copyright © 2017 Guille Gonzalez. All rights reserved.
//

import Foundation



protocol DetailNavigator {
    
    //identificador y quien
    func showDetail(_ whitIdentifier : Int64, mediaType : MediaType)
    
}
