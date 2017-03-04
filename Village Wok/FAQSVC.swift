//
//  onetwoViewController.swift
//  Village Wok
//
//  Created by Grace Tang on 3/2/17.
//  Copyright © 2017 tangfamily. All rights reserved.
//

import UIKit

class FAQSVC: UIViewController, UITableViewDataSource {
    
    
    @IBOutlet weak var expandTableView: UITableView!

    var expandedSections : NSMutableSet = []
    var sectionData : [String] = ["Village Wok Hours", "Village Wok Location", "Is There A Minimum For Delivery?", "Call For Carry- Out/ Delivery", "What Payments Do We Accept?", "When Is Buffet Day?", "How Much Is The Buffet?"]
    
    var row1 = ["Mon - Fri: 10:30AM - 9:30PM", "Sat: Closed", "Sun: 11:00AM - 9:30PM"]
    var row2 = ["1100 S College St. Auburn, AL 36830"]
    var row3 = ["Minimum $10.00 + Deliver Fee"]
    var row4 = ["(334)-501-2996", "(334)-501-2995"]
    var row5 = ["Visa", "MasterCard", "Cash"]
    var row6 = ["Sunday Lunch 11:00AM - 3:00PM"]
    var row7 = ["$6.48 Per Person"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  self.expandTableView.separatorStyle = .none
        
        //  self.expandTableView.separatorColor = UIColor.red
        
        
    }
    
    /*
     @IBAction func backButtonPressed(_ sender: Any) {
     
     dismiss(animated: true, completion: nil)
     
     }
     */
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    func sectionTapped(_ sender: UIButton) {
        //print("section Tapped")
        let section = sender.tag
        let shouldExpand = !expandedSections.contains(section)
        if (shouldExpand) {
            expandedSections.removeAllObjects()
            expandedSections.add(section)
        } else {
            expandedSections.removeAllObjects()
        }
        self.expandTableView.reloadData()
    }
    
}




extension FAQSVC: UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionData.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        // 0 0 300 28
        let headerView = UIView.init(frame: CGRect(x: 0, y: 0, width: 300, height: 80))
        var imageView = UIImageView()
        if (expandedSections.contains(section)) {
            
            //10 10 18 10
            imageView = UIImageView.init(frame: CGRect(x: 8, y: 25, width: 28, height: 28))
            imageView.image = UIImage(named: "down-arrow")
        } else {
            
            //10 15 10 18
            imageView = UIImageView.init(frame: CGRect(x: 8, y: 25, width: 28, height: 28))
            imageView.image = UIImage(named: "right-arrow")
        }
        
        
        // 38 4 250 28 // 50 15 300 28
        let headerTitle = UILabel.init(frame: CGRect(x: 50, y: 20, width: 300, height: 28))
        headerTitle.text = sectionData[section]
        
        headerTitle.font = UIFont.systemFont(ofSize: 17, weight: UIFontWeightSemibold)
        
        
        //x: 0, y: 0, width: headerView.frame.size.width, height: headerView.frame.size.height
        let tappedSection = UIButton.init(frame: CGRect(x: 0, y: 0, width: headerView.frame.size.width, height: headerView.frame.size.height))
        tappedSection.addTarget(self, action: #selector(sectionTapped), for: .touchUpInside)
        tappedSection.tag = section
        
        headerView.addSubview(imageView)
        headerView.addSubview(headerTitle)
        headerView.addSubview(tappedSection)
        
        //     self.expandTableView.separatorColor = UIColor.red
        
        headerView.backgroundColor = UIColor(red: 248/255.0, green: 248/255.0, blue: 248/255.0, alpha: 1.0)
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        
        // return 44
        return 80
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(expandedSections.contains(section)) {
            switch section {
            case 0:
                return row1.count
            case 1:
                return row2.count
            case 2:
                return row3.count
            case 3:
                return row4.count
            case 4:
                return row5.count
            case 5:
                return row6.count
                
            default:
                return row7.count
            }
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        
        
        //  cell?.textLabel?.textAlignment = .center
        
        switch indexPath.section {
        case 0:
            cell?.textLabel?.text = row1[indexPath.row]
        case 1:
            cell?.textLabel?.text = row2[indexPath.row]
        case 2:
            cell?.textLabel?.text = row3[indexPath.row]
        case 3:
            cell?.textLabel?.text = row4[indexPath.row]
        case 4:
            cell?.textLabel?.text = row5[indexPath.row]
        case 5:
            cell?.textLabel?.text = row6[indexPath.row]
            
        default:
            cell?.textLabel?.text = row7[indexPath.row]
        }
        return cell!;
    }

}
