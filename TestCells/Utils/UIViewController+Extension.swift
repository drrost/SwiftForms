//
//  UIViewController+Extension.swift
//  TestCells
//
//  Created by Rostyslav Druzhchenko on 05.04.2020.
//  Copyright © 2020 Rostyslav Druzhchenko. All rights reserved.
//

import Foundation

import UIKit

extension UIViewController {

    class func instantiate<T>(_ storyboardName: String, _ identifier: String = "\(T.self)") -> T {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: identifier) as! T
    }

    class func instantiate(fromStoryboardName: String) -> Self {
        let storyboard = UIStoryboard(name: fromStoryboardName, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: "\(Self.self)") as! Self
    }

    class func instantiateInitial<T>(_ storyboardName: String) -> T {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        return storyboard.instantiateInitialViewController() as! T
    }
}
