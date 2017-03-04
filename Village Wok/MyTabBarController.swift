//
//  MyTabBarController.swift
//  Village Wok
//
//  Created by Grace Tang on 3/2/17.
//  Copyright © 2017 tangfamily. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
       

        // color of the icon of the selected UITabBarItem and Title
        UITabBar.appearance().tintColor = UIColor.orange
        
        // color of the background of the UITabBar
        UITabBar.appearance().barTintColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 1)
        
        UITabBar.appearance().isTranslucent = false
        
        // add background image (auto add on every view controller)
        let backgroundImage = UIImageView(image: UIImage(named: "large gray background"))
        backgroundImage.frame = backgroundImage.bounds
        self.view.addSubview(backgroundImage)
        
        
    }
    
 

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
