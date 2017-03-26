//
//  PageSwipeController.swift
//  BaybeeBump
//
//  Created by Kevin Baltazar Reyes on 3/18/17.
//  Copyright © 2017 Kevin Baltazar Reyes. All rights reserved.
//

import Foundation
import UIKit

class PageSwipeController: UIPageViewController {
    
    private(set) lazy var orderedViewControllers: [UIViewController] = {
        return [InfoViewController()]
    }()
}
