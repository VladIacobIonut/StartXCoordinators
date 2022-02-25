//
//  SignUpCoordinator.swift
//  StartCoordinators
//
//  Created by Vlad Iacob on 23.02.2022.
//

import Foundation
import XCoordinator
import UIKit
import SwiftUI

enum SignUpRoute: Route {
    case basic
    case phone
}

final class SignUpCoordinator: NavigationCoordinator<SignUpRoute> {
    init() {
        super.init(initialRoute: .basic)
    }
    
    override func prepareTransition(for route: SignUpRoute) -> NavigationTransition {
        switch route {
        case .basic:
            let basicSignupView = UIHostingController(rootView: SignUpBasicView {
                self.trigger(.phone)
            })
            
            return .push(basicSignupView, animation: .default)
        case .phone:
            let basicSignupView = UIHostingController(rootView: SignUpContactView())
            
            return .push(basicSignupView, animation: .default)
        }
    }
}
