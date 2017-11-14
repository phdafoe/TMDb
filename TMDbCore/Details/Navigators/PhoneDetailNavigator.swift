//
//  PhoneDetailNavigator.swift
//  TMDbCore
//
//  Created by Andres on 14/11/17.
//  Copyright © 2017 Guille Gonzalez. All rights reserved.
//

import Foundation

final class PhoneDetalNavigator : DetailNavigator{
    
    //MARK: - variables
    private let navigationController : UINavigationController
    private unowned let viewControllerProvider : DetailViewControllerProvider
    
    init(navigationC : UINavigationController, VCProvider : DetailViewControllerProvider) {
        self.navigationController = navigationC
        self.viewControllerProvider = VCProvider
    }
    
    
    func showDetail(_ identifier: Int64, mediaType: MediaType) {
        let viewC = viewControllerProvider.detailViewController(identifier: identifier, mediaType: mediaType)
        navigationController.pushViewController(viewC, animated: true)
    }
}
