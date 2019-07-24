//
//  XQTabCtr.swift
//  bxkc
//
//  Created by tangmengze on 2019/4/6.
//  Copyright © 2019 tangmengze. All rights reserved.
//

import UIKit
import ESTabBarController_swift
import CTMediator
import TGHome_extension
import TGCustom_extension
import TGMine_extension

class XQTabCtr: ESTabBarController {
    class func tabCtr() -> ESTabBarController {
        let tabCtr = ESTabBarController()
        // 子控制器
        let homeCtr = CTMediator.sharedInstance()?.TGHome_Controller(callback: { (result) in
            print(result)
        })
        let customCtr = CTMediator.sharedInstance()?.TGCustom_Controller(callback: { (result) in
            print(result)
        })
        let mineCtr = CTMediator.sharedInstance()?.TGMine_Controller(callback: { (result) in
            print(result)
        })
        // 子tabBarItem
        homeCtr?.tabBarItem = ESTabBarItem.init(title: "首页", image: UIImage(named: "home_n_icon"), selectedImage: UIImage(named: "home_icon"))
        customCtr?.tabBarItem = ESTabBarItem.init(title: "招标定制", image: UIImage(named: "home_custom-made_n_icon"), selectedImage: UIImage(named: "home_custom-made_h_icon"))
        mineCtr?.tabBarItem = ESTabBarItem.init(title: "我的", image: UIImage(named: "home_mine_icon"), selectedImage: UIImage(named: "home_mine_h_icon"))
        homeCtr?.title = "首页"
        customCtr?.title = "招标定制"
        mineCtr?.title = "我的"
        
        let navHome = XQNavCtr.navWithRootCtr(homeCtr)
        let navCustom = XQNavCtr.navWithRootCtr(customCtr)
        let navMine = XQNavCtr.navWithRootCtr(mineCtr)
        tabCtr.viewControllers = [navHome, navCustom, navMine]
        return tabCtr
    }
}
