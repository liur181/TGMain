//
//  XQNavCtr.swift
//  bxkc
//
//  Created by tangmengze on 2019/4/6.
//  Copyright © 2019 tangmengze. All rights reserved.
//

import UIKit

class XQNavCtr: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    class func navWithRootCtr(_ ctr: UIViewController?) -> XQNavCtr {
        let navCtr = XQNavCtr(rootViewController: ctr!)
        return navCtr
    }
    
}

