//
//  LocationDetailsVC.swift
//  Village Wok
//
//  Created by Grace Tang on 3/3/17.
//  Copyright © 2017 tangfamily. All rights reserved.
//

import UIKit

class LocationDetailsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // call 334.501.2996
    
    @IBAction func callNumberOne(_ sender: Any) {
        
        //  For popup use telprompt://\(number) and for direct call use tel://\(number)
        
        //  guard let url = URL(string: "telprompt://\(3345012996)" ) else { return }
        
        let phone:UInt32 = 3345012996
        guard let url = URL(string: "telprompt://\(phone)") else {return}
        
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
        
    }
    
    // call 334.501.2995
    
    @IBAction func callNumberTwo(_ sender: Any) {
        
        //  guard let url = URL(string: "telprompt://\(3345012995)" ) else { return }
        
        let phone:UInt32 = 3345012995
        guard let url = URL(string: "telprompt://\(phone)") else {return}
        
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
        
    }
    
    
    
    // website Hyperlink

    @IBAction func websiteHyperlink(_ sender: Any) {
        
        guard let url = URL(string: "http://www.auburnvillagewok.com" ) else { return }
        
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
        
        
    }
   

}
