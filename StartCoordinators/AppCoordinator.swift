//
//  AppCoordinator.swift
//  StartCoordinators
//
//  Created by Vlad Iacob on 23.02.2022.
//

import Foundation
import XCoordinator
import SwiftUI

enum AppRoute: Route {
    case login
    case signUp
}

final class AppCordinator: NavigationCoordinator<AppRoute> {
    var loginVC: UIViewController?
    
    init() {
        super.init(initialRoute: .login)
    }
    
    override func prepareTransition(for route: AppRoute) -> NavigationTransition {
        switch route {
        case .login:
            let loginView = LoginView { action in
                switch action {
                case .signUp:
                    self.trigger(.signUp)
                }
            }
            let loginVC = UIHostingController(rootView: loginView)
            
            return .push(loginVC, animation: .default)
        case .signUp:
            return .present(SignUpCoordinator().strongRouter)
        }
    }
}
