//
//  ModuleConfig.swift
//  CustomerCare
//
//  Created by quoclki on 7/31/16.
//  Copyright © 2016 quoclki. All rights reserved.
//

import Foundation
import BasicApp_Base
import BasicApp_Customer
import BaiscApp_Setting

class ModuleConfig {
    
    init() {
        createSlideMenuData()
    }
    
    func createSlideMenuData() {
        var slideMenu = SlideMenuItem()
        slideMenu.id = "menu01"
        slideMenu.name = "Customer"
        slideMenu.isActive = true
        slideMenu.isView = true
        slideMenu.isAction = true
        slideMenu.viewController = CustomerVCtrl()
        Base.slideMenuData.append(slideMenu)
        
        slideMenu = SlideMenuItem()
        slideMenu.id = "menu02"
        slideMenu.name = "Setting"
        slideMenu.isActive = true
        slideMenu.isView = true
        slideMenu.isAction = true
        slideMenu.viewController = SettingVCtrl()
        Base.slideMenuData.append(slideMenu)
    }
}
