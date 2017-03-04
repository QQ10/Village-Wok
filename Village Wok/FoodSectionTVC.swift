//
//  FoodSectionTVC.swift
//  Village Wok
//
//  Created by Grace Tang on 3/1/17.
//  Copyright © 2017 tangfamily. All rights reserved.
//

import UIKit

class FoodSectionTVC: UITableViewController {

    let foodSectionCellIdentifier = "FoodSectionCell"
    
    var foodSections = [FoodSection]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
     override func numberOfSections(in tableView: UITableView) -> Int {
     // #warning Incomplete implementation, return the number of sections
     return 0
     }
     */
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return foodSections.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: foodSectionCellIdentifier, for: indexPath)
        
        let foodSection = foodSections[indexPath.row]
        cell.textLabel?.text = foodSection.name
        cell.detailTextLabel?.text = foodSection.secondViewDetailText
        cell.detailTextLabel?.textColor = UIColor.darkGray
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        // cell.accessoryType = .disclosureIndicator
        
        
        //  cell.backgroundColor = UIColor(white: 1, alpha: 0.5)
        cell.backgroundColor = .clear
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        let backgroundImage = UIImage(named: "gray background")
        let imageView = UIImageView(image: backgroundImage)
        self.tableView.backgroundView = imageView
        
    }
    
    /*
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */

}
