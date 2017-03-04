//
//  SecondVC.swift
//  Village Wok
//
//  Created by Grace Tang on 3/1/17.
//  Copyright © 2017 tangfamily. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBOutlet weak var button: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "Orange Phone")
        button.imageView?.contentMode = UIViewContentMode.scaleAspectFit
        button.setImage(image, for: UIControlState.normal)
        button.addTarget(self, action: #selector(buttonPressed), for: UIControlEvents.touchUpInside)
        view.addSubview(button)
        
        button.tintColor = UIColor.orange
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func buttonPressed() {
        
        // guard let url = URL(string: "telprompt://\(3345012996)" ) else { return }
        
        let phone:UInt32 = 3345012996
        guard let url = URL(string: "telprompt://\(phone)") else {return}
        
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
        
    }


}
