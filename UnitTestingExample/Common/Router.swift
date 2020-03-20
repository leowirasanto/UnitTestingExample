//
//  Router.swift
//  UnitTestingExample
//
//  Created by Leo Wirasanto on 20/03/20.
//  Copyright © 2020 Leo Wirasanto. All rights reserved.
//

import Foundation
import UIKit

enum NavigateType {
    case push
    case pushWithHideBottomBar
    case root
    case present
}

extension UIViewController {
    func navigate(_ type: NavigateType = .pushWithHideBottomBar, _ controller: UIViewController) {
        switch type {
        case .push:
            if let navigation = self.navigationController {
                navigation.pushViewController(controller, animated: true)
            }
        case .pushWithHideBottomBar:
            if let navigation = self.navigationController {
                controller.hidesBottomBarWhenPushed = true
                navigation.pushViewController(controller, animated: true)
            }
        case .root:
            UIApplication.shared.delegate?.window??.setRootViewController(controller)
        case .present:
            self.present(controller, animated: true, completion: nil)
        }
    }
}

extension UIWindow {
    func setRootViewController(_ controller: UIViewController) {
        self.rootViewController = controller
    }
}
