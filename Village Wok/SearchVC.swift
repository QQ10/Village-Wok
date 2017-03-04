//
//  SearchVC.swift
//  Village Wok
//
//  Created by Grace Tang on 3/1/17.
//  Copyright © 2017 tangfamily. All rights reserved.
//

import UIKit

class SearchVC: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate  {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var searchBar: UISearchBar!

    var filteredStates = [State]()
    
    
    var states = [
        
        // Chicken
        State(stateName: "Chicken w. Vegetables", abbreviation: "$8.99" ),
        State(stateName: "Chicken w. Broccoli", abbreviation: "$8.99" ),
        State(stateName: "Almond Chicken", abbreviation: "$8.99"),
        State(stateName: "Chicken w. Cashew Nuts", abbreviation: "$8.99"),
        State(stateName: "Potato Chicken", abbreviation: "$8.99"),
        State(stateName: "Lemon Chicken", abbreviation: "$8.99"),
        State(stateName: "Mongolian Chicken", abbreviation: "$8.99"),
        State(stateName: "Moo Goo Gai Pan", abbreviation: "$8.99"),
        State(stateName: "Chicken w. Snow Peas", abbreviation: "$8.99"),
        State(stateName: "Sweet & Sour Chicken", abbreviation: "$8.99"),
        State(stateName: "Curry Chicken 🌶", abbreviation: "$8.99"),
        State(stateName: "Kung Pao Chicken 🌶", abbreviation: "$8.99"),
        State(stateName: "Szechuan Chicken 🌶", abbreviation: "$8.99"),
        State(stateName: "Hunan Chicken", abbreviation: "$8.99"),
        State(stateName: "Chili Pepper Chicken🌶", abbreviation: "$8.99"),
        State(stateName: "Chicken w. Garlic Sauce 🌶", abbreviation: "$8.99"),
        
        // Seafood
        State(stateName: "Shrimp w. Vegetables", abbreviation: "$9.75"),
        State(stateName: "Shrimp w. Broccoli", abbreviation: "$9.75"),
        State(stateName: "Shrimp w. Lobster Sauce", abbreviation: "$9.75"),
        State(stateName: "Shrimp w. Cashew Nuts", abbreviation: "$9.75"),
        State(stateName: "Sweet & Sour Shrimp", abbreviation: "$9.75"),
        State(stateName: "Sesame Shrimp", abbreviation: "$9.75"),
        State(stateName: "Shrimp w. Snow Peas", abbreviation: "$9.75"),
        State(stateName: "Kung Pao Shrimp 🌶", abbreviation: "$9.75"),
        State(stateName: "Shrimp w. Garlic Sauce 🌶", abbreviation: "$9.75"),
        State(stateName: "Curry Shrimp 🌶", abbreviation: "$9.75"),
        State(stateName: "Hot & Spicy Shrimp 🌶", abbreviation: "$9.75"),
        
        //Beef
        State(stateName: "Beef w. Vegetables", abbreviation: "$9.25"),
        State(stateName: "Beef w. Broccoli", abbreviation: "$9.25"),
        State(stateName: "Pepper Steak", abbreviation: "$9.25"),
        State(stateName: "Potato Beef", abbreviation: "$9.25"),
        State(stateName: "Mongolian Beef", abbreviation: "$9.25"),
        State(stateName: "Beef w. Snow Peas", abbreviation: "$9.25"),
        State(stateName: "Kung Pao Beef 🌶", abbreviation: "$9.25"),
        State(stateName: "Hunan Beef 🌶", abbreviation: "$9.25"),
        State(stateName: "Szechuan Style Beef 🌶", abbreviation: "$9.25"),
        State(stateName: "Beef Garlic Sauce 🌶", abbreviation: "$9.25"),
        State(stateName: "Beef Mushroom", abbreviation: "$9.25"),
        State(stateName: "Curry Beef 🌶", abbreviation: "$9.25"),
        
        // Pork
        State(stateName: "Pork w. Vegetables", abbreviation: "$8.99"),
        State(stateName: "Pork w. Broccoli", abbreviation: "$8.99"),
        State(stateName: "Pork w. Green Peppers", abbreviation: "$8.99"),
        State(stateName: "Sweet & Sour Pork", abbreviation: "$8.99"),
        State(stateName: "Double Cooked Pork 🌶", abbreviation: "$8.99"),
        State(stateName: "Pork w. Garlic Sauce 🌶", abbreviation: "$8.99"),
        State(stateName: "Hot & Spicy Pork 🌶", abbreviation: "$8.99"),
        
        // Moo Shi
        State(stateName: "Moo Shi Vegetable", abbreviation: "$7.99"),
        State(stateName: "Moo Shi Pork or Chicken", abbreviation: "$8.99"),
        State(stateName: "Moo Shi Shrimp or Beef", abbreviation: "$8.99"),
        State(stateName: "Moo Shi Triple", abbreviation: "$9.50"),
        State(stateName: "Extra Pancake (Each)", abbreviation: "$0.40"),
        
        //Vegetarian
        State(stateName: "Vegetable Delight", abbreviation: "$7.99"),
        State(stateName: "Potato Vegetable", abbreviation: "$7.99"),
        State(stateName: "Broccoli w. Oyster Sauce", abbreviation: "$7.99"),
        State(stateName: "Sautees Green Beans", abbreviation: "$13.76"),
        State(stateName: "Yu- Hsiang Vegetable 🌶", abbreviation: "$7.99"),
        State(stateName: "Yu- Hsiang Eggplant 🌶", abbreviation: "$13.76"),
        
        // Health & Diet Menu
        State(stateName: "Mixed Vegetable", abbreviation: "$7.99"),
        State(stateName: "Bean Curd w. Vegetables", abbreviation: "$8.99"),
        State(stateName: "Chicken w. Vegetables", abbreviation: "$8.99"),
        State(stateName: "Shrimp w. Vegetables", abbreviation: "$9.95"),
        State(stateName: "Shrimp & Chicken w. Vegetables", abbreviation: "$10.50"),
        
        // Tofu
        State(stateName: "Sesame Tofu", abbreviation: "$8.99"),
        State(stateName: "General Tso's Tofu 🌶", abbreviation: "$8.99"),
        State(stateName: "Honey Tofu", abbreviation: "$8.99"),
        State(stateName: "Potato Tofu", abbreviation: "$8.99"),
        State(stateName: "Family Style Tofu", abbreviation: "$8.99"),
        State(stateName: "Ma Po Tofu 🌶", abbreviation: "$8.99"),
        State(stateName: "Curry Tofu 🌶", abbreviation: "$8.99"),
        State(stateName: "Tofu w. Garlic Sauce 🌶", abbreviation: "$8.99"),
        State(stateName: "Kung Pao Tofu 🌶", abbreviation: "$8.99"),
        
        // Fried Rice
        State(stateName: "Vegetable Fried Rice", abbreviation: "$7.25"),
        State(stateName: "Mushrooms Fried Rice", abbreviation: "$7.25"),
        State(stateName: "Chicken Fried Rice", abbreviation: "$7.50"),
        State(stateName: "Pork Fried Rice", abbreviation: "$7.50"),
        State(stateName: "Beef Fried Rice", abbreviation: "$7.99"),
        State(stateName: "Shrimp Fried Rice", abbreviation: "$7.99"),
        State(stateName: "House Special Fried Rice", abbreviation: "$8.99"),
        
        // Noodle
        State(stateName: "Vegetable Lo Mein", abbreviation: "$7.25"),
        State(stateName: "Chicken Lo Mein", abbreviation: "$7.50"),
        State(stateName: "Pork Lo Mein", abbreviation: "$7.50"),
        State(stateName: "Beef Lo Mein", abbreviation: "$7.99"),
        State(stateName: "Shrimp Lo Mein", abbreviation: "$7.99"),
        State(stateName: "House Special Lo Mein", abbreviation: "$9.25"),
        State(stateName: "Singapore Rice Noodles 🌶", abbreviation: "$9.25"),
        State(stateName: "House Singapore Rice Noodles 🌶", abbreviation: "$9.25"),
        
        // Mei Fun
        State(stateName: "Chicken Mei Fun", abbreviation: "$7.50"),
        State(stateName: "Pork Mei Fun", abbreviation: "$7.50"),
        State(stateName: "Beef Mei Fun", abbreviation: "$7.99"),
        State(stateName: "Shrimp Mei Fun", abbreviation: "$7.99"),
        State(stateName: "House Special Mei Fun", abbreviation: "$9.50"),
        
        // Chefs Specialties
        State(stateName: "Honey Chicken", abbreviation: "$9.25"),
        State(stateName: "Orange Chicken 🌶", abbreviation: "$9.25"),
        State(stateName: "General Tso's Chicken 🌶", abbreviation: "$9.25"),
        State(stateName: "Crispy Sesame Chicken", abbreviation: "$9.25"),
        State(stateName: "Teriyaki Chicken", abbreviation: "$10.50"),
        State(stateName: "Double Delight", abbreviation: "$10.50"),
        State(stateName: "Amazing Chicken 🌶", abbreviation: "$10.50"),
        State(stateName: "Beef Amazing 🌶", abbreviation: "$10.99"),
        State(stateName: "Tangerine Beef 🌶", abbreviation: "$10.99"),
        State(stateName: "Two Delight Of Shrimp", abbreviation: "$10.99"),
        State(stateName: "Triple Delight", abbreviation: "$10.99"),
        State(stateName: "Hunan Triple 🌶", abbreviation: "$10.99"),
        State(stateName: "Happy Family", abbreviation: "$10.99"),
        State(stateName: "Dragon And Phoenix 🌶", abbreviation: "$10.99"),
        State(stateName: "Phoenix Chicken 🌶", abbreviation: "$10.99"),
        State(stateName: "Seafood Delight", abbreviation: "$11.99"),
        State(stateName: "House Special Pan Fried Noodles", abbreviation: "$12.99"),
        State(stateName: "Seafood Pan Fried Noodles", abbreviation: "$12.99"),
        
        // SpecialCombos
        State(stateName: "Pepper Steak", abbreviation: "$10.99"),
        State(stateName: "Kung Pao Chicken 🌶", abbreviation: "$10.99"),
        State(stateName: "Honey Chicken", abbreviation: "$10.99"),
        State(stateName: "House Special Fried Rice", abbreviation: "$10.99"),
        State(stateName: "Family Style Tofu", abbreviation: "$10.99"),
        State(stateName: "Vegetable Delight", abbreviation: "$10.99"),
        State(stateName: "Shrimp Lo Mein", abbreviation: "$10.99"),
        State(stateName: "Chicken w. Vegetable", abbreviation: "$10.99"),
        State(stateName: "Sweet & Sour Pork", abbreviation: "$10.99"),
        State(stateName: "Pork w. Broccoli", abbreviation: "$10.99"),
        
        
        // Appetizers
        State(stateName: "Spring Roll", abbreviation: "$1.00"),
        State(stateName: "Egg Roll", abbreviation: "$1.00"),
        State(stateName: "Fried Wonton (8)", abbreviation: "$3.25"),
        State(stateName: "Fried Chicken Wings (8)", abbreviation: "$6.99"),
        State(stateName: "Spicy Chicken Wings (8)", abbreviation: "$6.99"),
        State(stateName: "Honey Chicken Wings (8)", abbreviation: "$6.99"),
        State(stateName: "BBQ Chicken Wings (8)", abbreviation: "$6.99"),
        State(stateName: "Crab Rangoon (6)", abbreviation: "$3.99"),
        State(stateName: "Beef Teriyaki (4)", abbreviation: "$6.99"),
        State(stateName: "Fried or Steamed Dumplings (8)", abbreviation: "$4.95"),
        State(stateName: "Donut (10)", abbreviation: "$3.99"),
        State(stateName: "Pu Pu Platter", abbreviation: "$10.99"),
        
        // Soups
        State(stateName: "Egg Drop Soup (Small)", abbreviation: "$1.99"),
        State(stateName: "Egg Drop Soup (Large)", abbreviation: "$3.99"),
        State(stateName: "Wonton Soup (Small)", abbreviation: "$1.99"),
        State(stateName: "Egg Drop Soup (Large)", abbreviation: "$3.99"),
        State(stateName: "Hot & Sour Soup (Small) 🌶", abbreviation: "$1.99"),
        State(stateName: "Hot & Sour Soup (Large) 🌶", abbreviation: "$3.99"),
        State(stateName: "Tofu w. Vegetable Soup", abbreviation: "$4.95"),
        State(stateName: "Sizzling Rice Soup", abbreviation: "$5.99"),
        
        // Beverage
        State(stateName: "Coke", abbreviation: "$1.89"),
        State(stateName: "Diet Coke", abbreviation: "$1.89"),
        State(stateName: "Sprite", abbreviation: "$1.89"),
        State(stateName: "Dr. Pepper", abbreviation: "$1.89"),
        State(stateName: "Root Beer", abbreviation: "$1.89"),
        State(stateName: "Sweet Tea", abbreviation: "$1.89"),
        State(stateName: "Unsweet Tea", abbreviation: "$1.89"),
        State(stateName: "Hot Tea", abbreviation: "$1.89"),
        
        // Side Order
        State(stateName: "Steamed Rice", abbreviation: "$1.75"),
        State(stateName: "Fried Rice", abbreviation: "$2.50"),
        State(stateName: "Steamed Broccoli", abbreviation: "$3.25"),
        State(stateName: "Lo Mein", abbreviation: "$3.25"),
        State(stateName: "Crispy Noodles", abbreviation: "$0.45"),
        
        // Lunch Specials
        State(stateName: "Vegetable Delight (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Moo Goo Gai Pan (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Chicken w. Broccoli (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Chicken w. Vegetable (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Potato Chicken (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Chicken w. Cashew Nuts (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Sweet & Sour Chicken (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Chicken w. Snow Peas (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Honey Chicken (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Sesame Chicken (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Kung Pao Chicken 🌶 (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Hunan Chicken 🌶 (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Garlic Chicken 🌶 (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Szechuan Chicken 🌶 (Lunch)", abbreviation: "$5.50"),
        State(stateName: "General Tao's Chicken 🌶 (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Chili Pepper Chicken 🌶 (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Orange Chicken 🌶 (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Amazing Chicken (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Pork w. vegetable (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Pork w. Broccoli (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Sweet & Sour Pork (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Double Cooked Pork 🌶 (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Kung Pao Pork 🌶 (Lunch)", abbreviation: "$5.50"),
        State(stateName: "General Tso's Tofu 🌶 (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Curry Tofu 🌶 (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Kung Pao Tofu 🌶 (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Sesame Tofu (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Honey Tofu (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Potato Tofu (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Family Tofu (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Tofu w. Vegetable (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Beef w. Vegetable (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Beef w. Broccoli (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Beef w. Mushroom (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Pepper Steak (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Potato Beef (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Kung Pao Beef 🌶 (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Hunan Beef 🌶 (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Curry Beef 🌶 (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Curry Shrimp 🌶 (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Shrimp w. Vegetable (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Shrimp w. Broccoli (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Vegetable Fried Rice (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Mushrooms Fried Rice (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Chicken Fried Rice (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Pork Fried Rice (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Beef Fried Rice (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Shrimp Fried Rice (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Vegetable Lo Mein (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Chicken Lo Mein (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Pork Lo Mein (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Beef Lo Mein (Lunch)", abbreviation: "$5.50"),
        State(stateName: "Shrimp Lo Mein (Lunch)", abbreviation: "$5.50"),
        
        // Authentic Simiplified Chinese
        State(stateName: "水煮牛肉", abbreviation: "$15.59"),
        State(stateName: "夫妻肺片", abbreviation: "$15.59"),
        State(stateName: "沙茶牛肉/ 牛肚", abbreviation: "$15.59"),
        State(stateName: "葱爆牛肉", abbreviation: "$15.59"),
        State(stateName: "家常豆腐", abbreviation: "$13.76"),
        State(stateName: "三杯豆腐", abbreviation: "$13.76"),
        State(stateName: "红烧肉", abbreviation: "$15.59"),
        State(stateName: "特制香肠", abbreviation: "$15.59"),
        State(stateName: "脆皮大肠", abbreviation: "$15.59"),
        State(stateName: "台湾排骨饭", abbreviation: "$11.93"),
        State(stateName: "台湾鸡排饭", abbreviation: "$11.93"),
        State(stateName: "海鲜汤面", abbreviation: "$15.59"),
        State(stateName: "小排骨汤面", abbreviation: "$15.59"),
        State(stateName: "榨菜肉丝汤面", abbreviation: "$15.59"),
        State(stateName: "麻婆豆腐", abbreviation: "$13.76"),
        State(stateName: "台湾卤肉饭", abbreviation: "$10.09"),
        State(stateName: "干扁四季豆", abbreviation: "$13.76"),
        State(stateName: "水煮鱼", abbreviation: "$15.59"),
        State(stateName: "宫保鱿鱼", abbreviation: "$15.59"),
        State(stateName: "综合海鲜", abbreviation: "$15.59"),
        State(stateName: "五更肠旺", abbreviation: "$15.59"),
        State(stateName: "三杯鸡", abbreviation: "$15.59"),
        State(stateName: "牛肉炒双椒", abbreviation: "$15.59"),
        State(stateName: "黑椒牛小排", abbreviation: "$15.59"),
        State(stateName: "紫菜蛋花汤", abbreviation: "$9.18"),
        State(stateName: "蕃茄蛋花汤", abbreviation: "$9.18"),
        State(stateName: "白菜丸子汤", abbreviation: "$9.18"),
        State(stateName: "鸡茸玉米汤", abbreviation: "$9.18"),
        State(stateName: "蒜泥白肉", abbreviation: "$15.59"),
        State(stateName: "糖醋排骨", abbreviation: "$15.59"),
        State(stateName: "椒盐排骨", abbreviation: "$15.59"),
        State(stateName: "红烧排骨", abbreviation: "$15.59"),
        State(stateName: "回锅肉", abbreviation: "$15.59"),
        State(stateName: "咸酥虾", abbreviation: "$15.59"),
        State(stateName: "虾仁烘蛋", abbreviation: "$15.59"),
        State(stateName: "客家茄子", abbreviation: "$13.76"),
        State(stateName: "鱼香茄子", abbreviation: "$13.76"),
        State(stateName: "鱼香肉丝", abbreviation: "$15.59"),
        State(stateName: "青椒肉丝", abbreviation: "$15.59"),
        State(stateName: "酸菜牛肚", abbreviation: "$15.59"),
        State(stateName: "酸菜大肠", abbreviation: "$15.59"),
        State(stateName: "土豆牛腩煲", abbreviation: "$15.59"),
        State(stateName: "樟茶鸭", abbreviation: "$15.59"),
        State(stateName: "红烧肥肠", abbreviation: "$15.59"),
        State(stateName: "酸辣土豆丝", abbreviation: "$13.76"),
        State(stateName: "重庆辣子鸡丁", abbreviation: "$13.76"),
        State(stateName: "重庆辣子肥肠", abbreviation: "$13.76"),
        State(stateName: "铁板茄子", abbreviation: "$13.76"),
        State(stateName: "铁板豆腐", abbreviation: "$13.76"),
        State(stateName: "青椒牛肉炒饭", abbreviation: "$13.76"),
        State(stateName: "虾仁火腿/蛋炒饭", abbreviation: "$13.76"),
        State(stateName: "炒时蔬", abbreviation: "$13.76"),
        State(stateName: "醋溜白菜", abbreviation: "$13.76"),
        State(stateName: "青江菜", abbreviation: "$13.76"),
        State(stateName: "菠菜", abbreviation: "$13.76"),
        State(stateName: "台湾菜脯蛋", abbreviation: "$13.76"),
        
        
        //State(stateName: "", abbreviation: ""),
        
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        searchBar.delegate = self
        
        // Do any additional setup after loading the view.
        filteredStates = states
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        tableView.addGestureRecognizer(tap)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredStates.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell")!
        //Access data from filteredStates array not from states array
        cell.textLabel?.text = self.filteredStates[indexPath.row].stateName
        cell.detailTextLabel?.text = self.filteredStates[indexPath.row].abbreviation
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(self.filteredStates[indexPath.row].stateName)
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchBar.showsCancelButton = true
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        self.filteredStates = searchText.isEmpty ? states : states.filter( { $0.stateName.localizedCaseInsensitiveContains(searchText) })
        self.tableView.reloadData()
    }
    func searchBarBookmarkButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        searchBar.showsCancelButton = false
        searchBar.text = ""
        self.filteredStates = states
        self.tableView.reloadData()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        searchBar.resignFirstResponder()
        
    }
    
    func handleTap() {
        
        self.view.endEditing(true)
        
    }
    
}



