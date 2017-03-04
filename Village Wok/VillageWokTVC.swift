//
//  VillageWokTVC.swift
//  Village Wok
//
//  Created by Grace Tang on 3/1/17.
//  Copyright © 2017 tangfamily. All rights reserved.
//

import UIKit

class VillageWokTVC: UITableViewController {

    let villageWokCellIdentifier = "VillageWokCell"
    
    var villageWoks = [VillageWok]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        villageWoks = loadData()
        
        self.tableView.separatorStyle = .none
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func loadData() ->[VillageWok] {
        
        // 1 appetizers
        let foodSectionA1 = FoodSection(name: "A1. Spring Roll", secondViewDetailText: "$1.00")
        let foodSectionA2 = FoodSection(name: "A2. Egg Roll", secondViewDetailText: "$1.00")
        let foodSectionA3 = FoodSection(name: "A3. Fried Wonton (8)", secondViewDetailText: "$3.25")
        let foodSectionA4 = FoodSection(name: "A4. Fried Chicken Wings (8)", secondViewDetailText: "$6.99")
        let foodSectionA5 = FoodSection(name: "A5. Spicy Chicken Wings (8)", secondViewDetailText: "$6.99")
        let foodSectionA6 = FoodSection(name: "A6. Honey Chicken Wings (8)", secondViewDetailText: "$6.99")
        let foodSectionA7 = FoodSection(name: "A7. BBQ Chicken Wings (8)", secondViewDetailText: "$6.99")
        let foodSectionA8 = FoodSection(name: "A8. Crab Rangoon (6)", secondViewDetailText: "$3.99")
        let foodSectionA9 = FoodSection(name: "A9. Beef Teriyaki (4)", secondViewDetailText: "$6.99")
        let foodSectionA10 = FoodSection(name: "A10. Fried or Steamed Dumplings (8)", secondViewDetailText: "$4.95")
        let foodSectionA11 = FoodSection(name: "A11. Donut (10)", secondViewDetailText: "$3.99")
        let foodSectionA12 = FoodSection(name: "A12. Pu Pu Platter", secondViewDetailText: "$10.99")
        
        // soups
        let foodSectionS1 = FoodSection(name: "S1. Egg Drop Soup (Small)", secondViewDetailText: "$1.99")
        let foodSectionS2 = FoodSection(name: "S2. Egg Drop Soup (Large)", secondViewDetailText: "$3.99")
        let foodSectionS3 = FoodSection(name: "S3. Wonton Soup (Small)", secondViewDetailText: "$1.99")
        let foodSectionS4 = FoodSection(name: "S4. Egg Drop Soup (Large)", secondViewDetailText: "$3.99")
        let foodSectionS5 = FoodSection(name: "S5. Hot & Sour Soup (Small) 🌶", secondViewDetailText: "$1.99")
        let foodSectionS6 = FoodSection(name: "S6. Hot & Sour Soup (Large) 🌶", secondViewDetailText: "$3.99")
        let foodSectionS7 = FoodSection(name: "S7. Tofu w. Vegetable Soup", secondViewDetailText: "$4.95")
        let foodSectionS8 = FoodSection(name: "S8. Sizzling Rice Soup", secondViewDetailText: "$5.99")
        
        // 2 lunchSpecials
        let foodSection1 = FoodSection(name: "1. Vegetable Delight", secondViewDetailText: "$5.50")
        let foodSection2 = FoodSection(name: "2. Moo Goo Gai Pan", secondViewDetailText: "$5.50")
        let foodSection3 = FoodSection(name: "3. Chicken w. Broccoli", secondViewDetailText: "$5.50")
        let foodSection4 = FoodSection(name: "4. Chicken w. Vegetable", secondViewDetailText: "$5.50")
        let foodSection5 = FoodSection(name: "5. Potato Chicken", secondViewDetailText: "$5.50")
        let foodSection6 = FoodSection(name: "6. Chicken w. Cashew Nuts", secondViewDetailText: "$5.50")
        let foodSection7 = FoodSection(name: "7. Sweet & Sour Chicken", secondViewDetailText: "$5.50")
        let foodSection8 = FoodSection(name: "8. Chicken w. Snow Peas", secondViewDetailText: "$5.50")
        let foodSection9 = FoodSection(name: "9. Honey Chicken", secondViewDetailText: "$5.50")
        let foodSection10 = FoodSection(name: "10. Sesame Chicken", secondViewDetailText: "$5.50")
        let foodSection11 = FoodSection(name: "11. Kung Pao Chicken 🌶", secondViewDetailText: "$5.50")
        let foodSection12 = FoodSection(name: "12. Hunan Chicken 🌶", secondViewDetailText: "$5.50")
        let foodSection13 = FoodSection(name: "13. Garlic Chicken 🌶", secondViewDetailText: "$5.50")
        let foodSection14 = FoodSection(name: "14. Szechuan Chicken 🌶", secondViewDetailText: "$5.50")
        let foodSection15 = FoodSection(name: "15. General Tao's Chicken 🌶", secondViewDetailText: "$5.50")
        let foodSection16 = FoodSection(name: "16. Chili Pepper Chicken 🌶", secondViewDetailText: "$5.50")
        let foodSection17 = FoodSection(name: "17. Orange Chicken 🌶", secondViewDetailText: "$5.50")
        let foodSection18 = FoodSection(name: "18. Curry Chicken 🌶", secondViewDetailText: "$5.50")
        let foodSection19 = FoodSection(name: "19. Amazing Chicken", secondViewDetailText: "$5.50")
        let foodSection20 = FoodSection(name: "20. Pork w. vegetable", secondViewDetailText: "$5.50")
        let foodSection21 = FoodSection(name: "21. Pork w. Broccoli", secondViewDetailText: "$5.50")
        let foodSection22 = FoodSection(name: "22. Sweet & Sour Pork", secondViewDetailText: "$5.50")
        let foodSection23 = FoodSection(name: "23. Double Cooked Pork 🌶", secondViewDetailText: "$5.50")
        let foodSection24 = FoodSection(name: "24. Kung Pao Pork 🌶", secondViewDetailText: "$5.50")
        let foodSection25 = FoodSection(name: "25. General Tso's Tofu 🌶", secondViewDetailText: "$5.50")
        let foodSection26 = FoodSection(name: "26. Curry Tofu 🌶", secondViewDetailText: "$5.50")
        let foodSection27 = FoodSection(name: "27. Kung Pao Tofu 🌶", secondViewDetailText: "$5.50")
        let foodSection28 = FoodSection(name: "28. Sesame Tofu", secondViewDetailText: "$5.50")
        let foodSection29 = FoodSection(name: "29. Honey Tofu", secondViewDetailText: "$5.50")
        let foodSection30 = FoodSection(name: "30. Potato Tofu", secondViewDetailText: "$5.50")
        let foodSection31 = FoodSection(name: "31. Family Tofu", secondViewDetailText: "$5.50")
        let foodSection32 = FoodSection(name: "32. Tofu w. Vegetable", secondViewDetailText: "$5.50")
        let foodSection33 = FoodSection(name: "33. Beef w. Vegetable", secondViewDetailText: "$5.50")
        let foodSection34 = FoodSection(name: "34. Beef w. Broccoli", secondViewDetailText: "$5.50")
        let foodSection35 = FoodSection(name: "35. Beef w. Mushroom", secondViewDetailText: "$5.50")
        let foodSection36 = FoodSection(name: "36. Pepper Steak", secondViewDetailText: "$5.50")
        let foodSection37 = FoodSection(name: "37. Potato Beef", secondViewDetailText: "$5.50")
        let foodSection38 = FoodSection(name: "38. Kung Pao Beef 🌶", secondViewDetailText: "$5.50")
        let foodSection39 = FoodSection(name: "39. Hunan Beef 🌶", secondViewDetailText: "$5.50")
        let foodSection40 = FoodSection(name: "40. Curry Beef 🌶", secondViewDetailText: "$5.50")
        let foodSection41 = FoodSection(name: "41. Curry Shrimp 🌶", secondViewDetailText: "$5.50")
        let foodSection42 = FoodSection(name: "42. Shrimp w. Vegetable", secondViewDetailText: "$5.50")
        let foodSection43 = FoodSection(name: "43. Shrimp w. Broccoli", secondViewDetailText: "$5.50")
        let foodSection44 = FoodSection(name: "44. Vegetable Fried Rice", secondViewDetailText: "$5.50")
        let foodSection45 = FoodSection(name: "45. Mushrooms Fried Rice", secondViewDetailText: "$5.50")
        let foodSection46 = FoodSection(name: "46. Chicken Fried Rice", secondViewDetailText: "$5.50")
        let foodSection47 = FoodSection(name: "47. Pork Fried Rice", secondViewDetailText: "$5.50")
        let foodSection48 = FoodSection(name: "48. Beef Fried Rice", secondViewDetailText: "$5.50")
        let foodSection49 = FoodSection(name: "49. Shrimp Fried Rice", secondViewDetailText: "$5.50")
        let foodSection50 = FoodSection(name: "50. Vegetable Lo Mein", secondViewDetailText: "$5.50")
        let foodSection51 = FoodSection(name: "51. Chicken Lo Mein", secondViewDetailText: "$5.50")
        let foodSection52 = FoodSection(name: "52. Pork Lo Mein", secondViewDetailText: "$5.50")
        let foodSection53 = FoodSection(name: "53. Beef Lo Mein", secondViewDetailText: "$5.50")
        let foodSection54 = FoodSection(name: "54. Shrimp Lo Mein", secondViewDetailText: "$5.50")
        
        // 3 chefsSpecialties
        let foodSectionF1 = FoodSection(name: "F1. Honey Chicken", secondViewDetailText: "$9.25")
        let foodSectionF2 = FoodSection(name: "F2. Orange Chicken 🌶", secondViewDetailText: "$9.25")
        let foodSectionF3 = FoodSection(name: "F3. General Tso's Chicken 🌶", secondViewDetailText: "$9.25")
        let foodSectionF4 = FoodSection(name: "F4. Crispy Sesame Chicken", secondViewDetailText: "$9.25")
        let foodSectionF5 = FoodSection(name: "F5. Teriyaki Chicken", secondViewDetailText: "$10.50")
        let foodSectionF6 = FoodSection(name: "F6. Double Delight", secondViewDetailText: "$10.50")
        let foodSectionF7 = FoodSection(name: "F7. Amazing Chicken 🌶", secondViewDetailText: "$10.50")
        let foodSectionF8 = FoodSection(name: "F8. Beef Amazing 🌶", secondViewDetailText: "$10.99")
        let foodSectionF9 = FoodSection(name: "F9. Tangerine Beef 🌶", secondViewDetailText: "$10.99")
        let foodSectionF10 = FoodSection(name: "F10. Two Delight Of Shrimp", secondViewDetailText: "$10.99")
        let foodSectionF11 = FoodSection(name: "F11. Triple Delight", secondViewDetailText: "$10.99")
        let foodSectionF12 = FoodSection(name: "F12. Hunan Triple 🌶", secondViewDetailText: "$10.99")
        let foodSectionF13 = FoodSection(name: "F13. Happy Family", secondViewDetailText: "$10.99")
        let foodSectionF14 = FoodSection(name: "F14. Dragon And Phoenix 🌶", secondViewDetailText: "$10.99")
        let foodSectionF15 = FoodSection(name: "F15. Phoenix Chicken 🌶", secondViewDetailText: "$10.99")
        let foodSectionF16 = FoodSection(name: "F16. Seafood Delight", secondViewDetailText: "$11.99")
        let foodSectionF17 = FoodSection(name: "F17. House Special Pan Fried Noodles", secondViewDetailText: "$12.99")
        let foodSectionF18 = FoodSection(name: "F18. Seafood Pan Fried Noodles", secondViewDetailText: "$12.99")
        
        
        // 4 specialCombos
        let foodSectionCB1 = FoodSection(name: "Pepper Steak", secondViewDetailText: "$10.99")
        let foodSectionCB2 = FoodSection(name: "Kung Pao Chicken 🌶", secondViewDetailText: "$10.99")
        let foodSectionCB3 = FoodSection(name: "Honey Chicken", secondViewDetailText: "$10.99")
        let foodSectionCB4 = FoodSection(name: "House Special Fried Rice", secondViewDetailText: "$10.99")
        let foodSectionCB5 = FoodSection(name: "Family Style Tofu", secondViewDetailText: "$10.99")
        let foodSectionCB6 = FoodSection(name: "Vegetable Delight", secondViewDetailText: "$10.99")
        let foodSectionCB7 = FoodSection(name: "Shrimp Lo Mein", secondViewDetailText: "$10.99")
        let foodSectionCB8 = FoodSection(name: "Chicken w. Vegetable", secondViewDetailText: "$10.99")
        let foodSectionCB9 = FoodSection(name: "Sweet & Sour Pork", secondViewDetailText: "$10.99")
        let foodSectionCB10 = FoodSection(name: "Pork w. Broccoli", secondViewDetailText: "$10.99")
        
        
        // 5 authenticChinese
        let foodSectionAC1 = FoodSection(name: "1. 水煮牛肉 ", secondViewDetailText: "$15.59")
        let foodSectionAC2 = FoodSection(name: "1. Spicy beef w. napa cabbage", secondViewDetailText: "$15.59")
        let foodSectionAC3 = FoodSection(name: "2. 夫妻肺片", secondViewDetailText: "$15.59")
        let foodSectionAC4 = FoodSection(name: "2. Spicy beef w, pork stomach", secondViewDetailText: "$15.59")
        let foodSectionAC5 = FoodSection(name: "3. 沙茶牛肉/ 牛肚", secondViewDetailText: "$15.59")
        let foodSectionAC6 = FoodSection(name: "3. Sa- Cha beef/ cow stomach", secondViewDetailText: "$15.59")
        let foodSectionAC7 = FoodSection(name: "4. 蔥爆牛肉", secondViewDetailText: "$15.59")
        let foodSectionAC8 = FoodSection(name: "4. Beef w. long green onions", secondViewDetailText: "$15.59")
        let foodSectionAC9 = FoodSection(name: "5. 家常豆腐", secondViewDetailText: "$13.76")
        let foodSectionAC10 = FoodSection(name: "5. Family village wok", secondViewDetailText: "$13.76")
        let foodSectionAC11 = FoodSection(name: "6. 三杯豆腐", secondViewDetailText: "$13.76")
        let foodSectionAC12 = FoodSection(name: "6. Three cups tofu", secondViewDetailText: "$13.76")
        let foodSectionAC13 = FoodSection(name: "7. 紅燒肉", secondViewDetailText: "$15.59")
        let foodSectionAC14 = FoodSection(name: "7. Braised pork in brown sauce", secondViewDetailText: "$15.59")
        let foodSectionAC15 = FoodSection(name: "8. 特製香腸", secondViewDetailText: "$15.59")
        let foodSectionAC16 = FoodSection(name: "8. Special Sausage", secondViewDetailText: "$15.59")
        let foodSectionAC17 = FoodSection(name: "9. 脆皮大腸", secondViewDetailText: "$15.59")
        let foodSectionAC18 = FoodSection(name: "9. Deep fried pork intestine", secondViewDetailText: "$15.59")
        let foodSectionAC19 = FoodSection(name: "10. 台灣排骨飯", secondViewDetailText: "$11.93")
        let foodSectionAC20 = FoodSection(name: "10. Pork chop w. rice", secondViewDetailText: "$11.93")
        let foodSectionAC21 = FoodSection(name: "11. 台灣雞排飯", secondViewDetailText: "$11.93")
        let foodSectionAC22 = FoodSection(name: "11. Chicken fillet w. rice", secondViewDetailText: "$11.93")
        let foodSectionAC23 = FoodSection(name: "12. 海鮮湯麵", secondViewDetailText: "$15.59")
        let foodSectionAC24 = FoodSection(name: "12. Seafood soup noodles", secondViewDetailText: "$15.59")
        let foodSectionAC25 = FoodSection(name: "13. 小排骨湯麵", secondViewDetailText: "$15.59")
        let foodSectionAC26 = FoodSection(name: "13. Small ribs soup noodles", secondViewDetailText: "$15.59")
        let foodSectionAC27 = FoodSection(name: "14. 榨菜肉絲湯麵", secondViewDetailText: "$15.59")
        let foodSectionAC28 = FoodSection(name: "14. Pork and pickled soup noodles", secondViewDetailText: "$15.59")
        let foodSectionAC29 = FoodSection(name: "15. 麻婆豆腐", secondViewDetailText: "$13.76")
        let foodSectionAC30 = FoodSection(name: "15. Chinese style tofu w. small pork", secondViewDetailText: "$13.76")
        let foodSectionAC31 = FoodSection(name: "16. 台灣滷肉飯", secondViewDetailText: "$10.09")
        let foodSectionAC32 = FoodSection(name: "16. Taiwan style meat on rice", secondViewDetailText: "$10.09")
        let foodSectionAC33 = FoodSection(name: "17. 乾扁四季豆", secondViewDetailText: "$13.76")
        let foodSectionAC34 = FoodSection(name: "17. Chinese style green beans", secondViewDetailText: "$13.76")
        let foodSectionAC35 = FoodSection(name: "18. 水煮魚", secondViewDetailText: "$15.59")
        let foodSectionAC36 = FoodSection(name: "18. Spicy fish w. napa cabbage", secondViewDetailText: "$15.59")
        let foodSectionAC37 = FoodSection(name: "19. 宮保魷魚", secondViewDetailText: "$15.59")
        let foodSectionAC38 = FoodSection(name: "19. Kung Pao squid", secondViewDetailText: "$15.59")
        let foodSectionAC39 = FoodSection(name: "20. 綜合海鮮", secondViewDetailText: "$15.59")
        let foodSectionAC40 = FoodSection(name: "20. Chinese seafood delight", secondViewDetailText: "$15.59")
        let foodSectionAC41 = FoodSection(name: "21. 五更腸旺", secondViewDetailText: "$15.59")
        let foodSectionAC42 = FoodSection(name: "21. Pork bold in spicy sauce", secondViewDetailText: "$15.59")
        let foodSectionAC43 = FoodSection(name: "22. 三杯雞", secondViewDetailText: "$15.59")
        let foodSectionAC44 = FoodSection(name: "22. Three cups chicken", secondViewDetailText: "$15.59")
        let foodSectionAC45 = FoodSection(name: "23. 牛肉炒雙椒", secondViewDetailText: "$15.59")
        let foodSectionAC46 = FoodSection(name: "23. Bell pepper w. beef", secondViewDetailText: "$15.59")
        let foodSectionAC47 = FoodSection(name: "24. 黑椒牛小排", secondViewDetailText: "$15.59")
        let foodSectionAC48 = FoodSection(name: "24. Black pepper beef ribs", secondViewDetailText: "$15.59")
        let foodSectionAC49 = FoodSection(name: "25. 紫菜蛋花湯", secondViewDetailText: "$9.18")
        let foodSectionAC50 = FoodSection(name: "25. Seaweed egg soup", secondViewDetailText: "$9.18")
        let foodSectionAC51 = FoodSection(name: "26. 蕃茄蛋花湯", secondViewDetailText: "$9.18")
        let foodSectionAC52 = FoodSection(name: "26. Tomato egg soup", secondViewDetailText: "$9.18")
        let foodSectionAC53 = FoodSection(name: "27. 白菜丸子湯", secondViewDetailText: "$9.18")
        let foodSectionAC54 = FoodSection(name: "27. Cabbage meat ball soup", secondViewDetailText: "$9.18")
        let foodSectionAC55 = FoodSection(name: "28. 雞茸玉米湯", secondViewDetailText: "$9.18")
        let foodSectionAC56 = FoodSection(name: "28. Chicken corn soup", secondViewDetailText: "$9.18")
        let foodSectionAC57 = FoodSection(name: "29. 蒜泥白肉", secondViewDetailText: "$15.59")
        let foodSectionAC58 = FoodSection(name: "29. Steamed pork topped w. garlic", secondViewDetailText: "$15.59")
        let foodSectionAC59 = FoodSection(name: "30. 糖醋排骨", secondViewDetailText: "$15.59")
        let foodSectionAC60 = FoodSection(name: "30. Sweet & sour ribs", secondViewDetailText: "$15.59")
        let foodSectionAC61 = FoodSection(name: "31. 椒鹽排骨", secondViewDetailText: "$15.59")
        let foodSectionAC62 = FoodSection(name: "31. Salt pepper ribs", secondViewDetailText: "$15.59")
        let foodSectionAC63 = FoodSection(name: "32. 紅燒排骨", secondViewDetailText: "$15.59")
        let foodSectionAC64 = FoodSection(name: "32. Braised ribs", secondViewDetailText: "$15.59")
        let foodSectionAC65 = FoodSection(name: "33. 回鍋肉", secondViewDetailText: "$15.59")
        let foodSectionAC66 = FoodSection(name: "33. Double cooked pork", secondViewDetailText: "$15.59")
        let foodSectionAC67 = FoodSection(name: "34. 鹹酥蝦", secondViewDetailText: "$15.59")
        let foodSectionAC68 = FoodSection(name: "34. Chinese style shrimp", secondViewDetailText: "$15.59")
        let foodSectionAC69 = FoodSection(name: "35. 蝦仁烘蛋", secondViewDetailText: "$15.59")
        let foodSectionAC70 = FoodSection(name: "35. Shrimp egg pancake", secondViewDetailText: "$15.59")
        let foodSectionAC71 = FoodSection(name: "36. 客家茄子", secondViewDetailText: "$13.76")
        let foodSectionAC72 = FoodSection(name: "36. Taiwan eggplant w. basil", secondViewDetailText: "$13.76")
        let foodSectionAC73 = FoodSection(name: "37. 魚香茄子", secondViewDetailText: "$13.76")
        let foodSectionAC74 = FoodSection(name: "37. Yu- xiang eggplant", secondViewDetailText: "$13.76")
        let foodSectionAC75 = FoodSection(name: "38. 魚香肉絲", secondViewDetailText: "$15.59")
        let foodSectionAC76 = FoodSection(name: "38. Yu- xiang pork", secondViewDetailText: "$15.59")
        let foodSectionAC77 = FoodSection(name: "39. 青椒肉絲", secondViewDetailText: "$15.59")
        let foodSectionAC78 = FoodSection(name: "39. Pepper pork", secondViewDetailText: "$15.59")
        let foodSectionAC79 = FoodSection(name: "40. 酸菜牛肚", secondViewDetailText: "$15.59")
        let foodSectionAC80 = FoodSection(name: "40. Sour vegetable w. beef", secondViewDetailText: "$15.59")
        let foodSectionAC81 = FoodSection(name: "41. 酸菜大腸", secondViewDetailText: "$15.59")
        let foodSectionAC82 = FoodSection(name: "41. Sour vegetable w. pork stomach", secondViewDetailText: "$15.59")
        let foodSectionAC83 = FoodSection(name: "42. 土豆牛腩煲", secondViewDetailText: "$15.59")
        let foodSectionAC84 = FoodSection(name: "42. Potato sirloin pot", secondViewDetailText: "$15.59")
        let foodSectionAC85 = FoodSection(name: "43. 樟茶鴨", secondViewDetailText: "$15.59")
        let foodSectionAC86 = FoodSection(name: "43. Duck in soy sauce", secondViewDetailText: "$15.59")
        let foodSectionAC87 = FoodSection(name: "44. 紅燒肥腸", secondViewDetailText: "$15.59")
        let foodSectionAC88 = FoodSection(name: "44. Braised pork intestine", secondViewDetailText: "$15.59")
        let foodSectionAC89 = FoodSection(name: "45. 酸辣土豆絲", secondViewDetailText: "$13.76")
        let foodSectionAC90 = FoodSection(name: "45. Chili sour potato shreds", secondViewDetailText: "$13.76")
        let foodSectionAC91 = FoodSection(name: "46. 重慶辣子雞丁", secondViewDetailText: "$13.76")
        let foodSectionAC92 = FoodSection(name: "46. Chongqing style spicy chicken", secondViewDetailText: "$13.76")
        let foodSectionAC93 = FoodSection(name: "47. 重慶辣子肥腸", secondViewDetailText: "$13.76")
        let foodSectionAC94 = FoodSection(name: "47. Chongqing style pork stomach", secondViewDetailText: "$13.76")
        let foodSectionAC95 = FoodSection(name: "48. 鐵板茄子", secondViewDetailText: "$13.76")
        let foodSectionAC96 = FoodSection(name: "48. Sizzling eggplant", secondViewDetailText: "$13.76")
        let foodSectionAC97 = FoodSection(name: "49. 鐵板豆腐", secondViewDetailText: "$13.76")
        let foodSectionAC98 = FoodSection(name: "49. Sizzling tofu", secondViewDetailText: "$13.76")
        let foodSectionAC99 = FoodSection(name: "50. 青椒牛肉炒飯", secondViewDetailText: "$13.76")
        let foodSectionAC100 = FoodSection(name: "50. Beef pepper fried eice", secondViewDetailText: "$13.76")
        let foodSectionAC101 = FoodSection(name: "51. 蝦仁火腿/蛋炒飯", secondViewDetailText: "$13.76")
        let foodSectionAC102 = FoodSection(name: "51. Shrimp ham/ egg fried rice", secondViewDetailText: "$13.76")
        let foodSectionAC103 = FoodSection(name: "52. 炒時蔬", secondViewDetailText: "$13.76")
        let foodSectionAC104 = FoodSection(name: "52. Seasonal vegetables", secondViewDetailText: "$13.76")
        let foodSectionAC105 = FoodSection(name: "53. 醋溜白菜", secondViewDetailText: "$13.76")
        let foodSectionAC106 = FoodSection(name: "53. Sour cabbage", secondViewDetailText: "$13.76")
        let foodSectionAC107 = FoodSection(name: "54. 青江菜", secondViewDetailText: "$13.76")
        let foodSectionAC108 = FoodSection(name: "54. ching- chiang vegetable", secondViewDetailText: "$13.76")
        let foodSectionAC109 = FoodSection(name: "55. 波菜", secondViewDetailText: "$13.76")
        let foodSectionAC110 = FoodSection(name: "55. Spinach", secondViewDetailText: "$13.76")
        let foodSectionAC111 = FoodSection(name: "55. 台灣菜脯蛋", secondViewDetailText: "$13.76")
        let foodSectionAC112 = FoodSection(name: "55. Taiwan egg pancake", secondViewDetailText: "$13.76")
        
        // tofu
        let foodSectionT1 = FoodSection(name: "T1. Sesame Tofu", secondViewDetailText: "$8.99")
        let foodSectionT2 = FoodSection(name: "T2. General Tso's Tofu 🌶", secondViewDetailText: "$8.99")
        let foodSectionT3 = FoodSection(name: "T3. Honey Tofu", secondViewDetailText: "$8.99")
        let foodSectionT4 = FoodSection(name: "T4. Potato Tofu", secondViewDetailText: "$8.99")
        let foodSectionT5 = FoodSection(name: "T5. Family Style Tofu", secondViewDetailText: "$8.99")
        let foodSectionT6 = FoodSection(name: "T6. Ma Po Tofu 🌶", secondViewDetailText: "$8.99")
        let foodSectionT7 = FoodSection(name: "T7. Curry Tofu 🌶", secondViewDetailText: "$8.99")
        let foodSectionT8 = FoodSection(name: "T8. Tofu w. Garlic Sauce 🌶", secondViewDetailText: "$8.99")
        let foodSectionT9 = FoodSection(name: "T9. Kung Pao Tofu 🌶", secondViewDetailText: "$8.99")
        
        // Health & Diet Menu
        let foodSectionH1 = FoodSection(name: "H1. Mixed Vegetable", secondViewDetailText: "$7.99")
        let foodSectionH2 = FoodSection(name: "H2. Bean Curd w. Vegetables", secondViewDetailText: "$8.99")
        let foodSectionH3 = FoodSection(name: "H3. Chicken w. Vegetables", secondViewDetailText: "$8.99")
        let foodSectionH4 = FoodSection(name: "H4. Shrimp w. Vegetables", secondViewDetailText: "$9.95")
        let foodSectionH5 = FoodSection(name: "H5. Shrimp & Chicken w. Vegetables", secondViewDetailText: "$10.50")
        
        // 6 vegetarian
        let foodSectionV1 = FoodSection(name: "V1. Vegetable Delight", secondViewDetailText: "$7.99")
        let foodSectionV2 = FoodSection(name: "V2. Potato Vegetable", secondViewDetailText: "$7.99")
        let foodSectionV3 = FoodSection(name: "V3. Broccoli w. Oyster Sauce", secondViewDetailText: "$7.99")
        let foodSectionV4 = FoodSection(name: "V4. Sautees Green Beans", secondViewDetailText: "$13.76")
        let foodSectionV5 = FoodSection(name: "V5. Yu- Hsiang Vegetable 🌶", secondViewDetailText: "$7.99")
        let foodSectionV6 = FoodSection(name: "V6. Yu- Hsiang Eggplant 🌶", secondViewDetailText: "$13.76")
        
        // 7 friedRice
        let foodSectionFR1 = FoodSection(name: "FR1. Vegetable Fried Rice", secondViewDetailText: "$7.25")
        let foodSectionFR2 = FoodSection(name: "FR2. Mushrooms Fried Rice", secondViewDetailText: "$7.25")
        let foodSectionFR3 = FoodSection(name: "FR3. Chicken Fried Rice", secondViewDetailText: "$7.50")
        let foodSectionFR4 = FoodSection(name: "FR4. Pork Fried Rice", secondViewDetailText: "$7.50")
        let foodSectionFR5 = FoodSection(name: "FR5. Beef Fried Rice", secondViewDetailText: "$7.99")
        let foodSectionFR6 = FoodSection(name: "FR6. Shrimp Fried Rice", secondViewDetailText: "$7.99")
        let foodSectionFR7 = FoodSection(name: "FR7. House Special Fried Rice", secondViewDetailText: "$8.99")
        
        // Noodle
        let foodSectionLM1 = FoodSection(name: "L1. Vegetable Lo Mein", secondViewDetailText: "$7.25")
        let foodSectionLM2 = FoodSection(name: "L2. Chicken Lo Mein", secondViewDetailText: "$7.50")
        let foodSectionLM3 = FoodSection(name: "L3. Pork Lo Mein", secondViewDetailText: "$7.50")
        let foodSectionLM4 = FoodSection(name: "L4. Beef Lo Mein", secondViewDetailText: "$7.99")
        let foodSectionLM5 = FoodSection(name: "L5. Shrimp Lo Mein", secondViewDetailText: "$7.99")
        let foodSectionLM6 = FoodSection(name: "L6. House Special Lo Mein", secondViewDetailText: "$9.25")
        let foodSectionLM7 = FoodSection(name: "L7. Singapore Rice Noodles 🌶", secondViewDetailText: "$9.25")
        let foodSectionLM8 = FoodSection(name: "L8. House Singapore Rice Noodles 🌶", secondViewDetailText: "$9.25")
        
        let foodSectionMF1 = FoodSection(name: "M1. Chicken Mei Fun", secondViewDetailText: "$7.50")
        let foodSectionMF2 = FoodSection(name: "M2. Pork Mei Fun", secondViewDetailText: "$7.50")
        let foodSectionMF3 = FoodSection(name: "M3. Beef Mei Fun", secondViewDetailText: "$7.99")
        let foodSectionMF4 = FoodSection(name: "M4. Shrimp Mei Fun", secondViewDetailText: "$7.99")
        let foodSectionMF5 = FoodSection(name: "M5 House Special Mei Fun", secondViewDetailText: "$9.50")
        
        // 9 mooShi
        let foodSectionM1 = FoodSection(name: "MS1. Moo Shi Vegetable", secondViewDetailText: "$7.99")
        let foodSectionM2 = FoodSection(name: "MS2. Moo Shi Pork or Chicken", secondViewDetailText: "$8.99")
        let foodSectionM3 = FoodSection(name: "MS3. Moo Shi Shrimp or Beef", secondViewDetailText: "$8.99")
        let foodSectionM4 = FoodSection(name: "MS4. Moo Shi Triple", secondViewDetailText: "$9.50")
        let foodSectionM5 = FoodSection(name: "MS5. Extra Pancake (Each)", secondViewDetailText: "$0.40")
        
        // 10 sideOrder
        let foodSectionSO1 = FoodSection(name: "SO1. Steamed Rice", secondViewDetailText: "$1.75")
        let foodSectionSO2 = FoodSection(name: "SO2. Fried Rice", secondViewDetailText: "$2.50")
        let foodSectionSO3 = FoodSection(name: "S03. Steamed Broccoli", secondViewDetailText: "$3.25")
        let foodSectionSO4 = FoodSection(name: "SO4. Lo Mein", secondViewDetailText: "$3.25")
        let foodSectionSO5 = FoodSection(name: "SO5. Crispy Noodles", secondViewDetailText: "$0.45")
        
        // 11 beverage
        let foodSectionBV1 = FoodSection(name: "B1. Coke", secondViewDetailText: "$1.89")
        let foodSectionBV2 = FoodSection(name: "B2. Diet Coke", secondViewDetailText: "$1.89")
        let foodSectionBV3 = FoodSection(name: "B3. Sprite", secondViewDetailText: "$1.89")
        let foodSectionBV4 = FoodSection(name: "B4. Dr. Pepper", secondViewDetailText: "$1.89")
        let foodSectionBV5 = FoodSection(name: "B5. Root Beer", secondViewDetailText: "$1.89")
        let foodSectionBV6 = FoodSection(name: "B6. Sweet Tea", secondViewDetailText: "$1.89")
        let foodSectionBV7 = FoodSection(name: "B7. Unsweet Tea", secondViewDetailText: "$1.89")
        let foodSectionBV8 = FoodSection(name: "B8. Hot Tea", secondViewDetailText: "$1.89")
        
        // 12 pork
        let foodSectionP1 = FoodSection(name: "P1. Pork w. Vegetables", secondViewDetailText: "$8.99")
        let foodSectionP2 = FoodSection(name: "P2. Pork w. Broccoli", secondViewDetailText: "$8.99")
        let foodSectionP3 = FoodSection(name: "P3. Pork w. Green Peppers", secondViewDetailText: "$8.99")
        let foodSectionP4 = FoodSection(name: "P4. Sweet & Sour Pork", secondViewDetailText: "$8.99")
        let foodSectionP5 = FoodSection(name: "P5. Double Cooked Pork 🌶", secondViewDetailText: "$8.99")
        let foodSectionP6 = FoodSection(name: "P6. Pork w. Garlic Sauce 🌶", secondViewDetailText: "$8.99")
        let foodSectionP7 = FoodSection(name: "P7. Hot & Spicy Pork 🌶", secondViewDetailText: "$8.99")
        
        // 13 beef
        let foodSectionB1 = FoodSection(name: "B1. Beef w. Vegetables", secondViewDetailText: "$9.25")
        let foodSectionB2 = FoodSection(name: "B2. Beef w. Broccoli", secondViewDetailText: "$9.25")
        let foodSectionB3 = FoodSection(name: "B3. Pepper Steak", secondViewDetailText: "$9.25")
        let foodSectionB4 = FoodSection(name: "B4. Potato Beef", secondViewDetailText: "$9.25")
        let foodSectionB5 = FoodSection(name: "B5. Mongolian Beef", secondViewDetailText: "$9.25")
        let foodSectionB6 = FoodSection(name: "B6. Beef w. Snow Peas", secondViewDetailText: "$9.25")
        let foodSectionB7 = FoodSection(name: "B7. Kung Pao Beef 🌶", secondViewDetailText: "$9.25")
        let foodSectionB8 = FoodSection(name: "B8. Hunan Beef 🌶", secondViewDetailText: "$9.25")
        let foodSectionB9 = FoodSection(name: "B9. Szechuan Style Beef 🌶", secondViewDetailText: "$9.25")
        let foodSectionB10 = FoodSection(name: "B10. Beef Garlic Sauce 🌶", secondViewDetailText: "$9.25")
        let foodSectionB11 = FoodSection(name: "B11. Beef Mushroom", secondViewDetailText: "$9.25")
        let foodSectionB12 = FoodSection(name: "B12. Curry Beef 🌶", secondViewDetailText: "$9.25")
        
        // 14 chicken
        let foodSectionC1 = FoodSection(name: "C1. Chicken w. Vegetables", secondViewDetailText: "$8.99")
        let foodSectionC2 = FoodSection(name: "C2. Chicken w. Broccoli", secondViewDetailText: "$8.99")
        let foodSectionC3 = FoodSection(name: "C3. Almond Chicken", secondViewDetailText: "$8.99")
        let foodSectionC4 = FoodSection(name: "C4. Chicken w. Cashew Nuts", secondViewDetailText: "$8.99")
        let foodSectionC5 = FoodSection(name: "C5. Potato Chicken", secondViewDetailText: "$8.99")
        let foodSectionC6 = FoodSection(name: "C6. Lemon Chicken", secondViewDetailText: "$8.99")
        let foodSectionC7 = FoodSection(name: "C7. Mongolian Chicken", secondViewDetailText: "$8.99")
        let foodSectionC8 = FoodSection(name: "C8. Moo Goo Gai Pan", secondViewDetailText: "$8.99")
        let foodSectionC9 = FoodSection(name: "C9. Chicken w. Snow Peas", secondViewDetailText: "$8.99")
        let foodSectionC10 = FoodSection(name: "C10. Sweet & Sour Chicken", secondViewDetailText: "$8.99")
        let foodSectionC11 = FoodSection(name: "C11. Curry Chicken 🌶", secondViewDetailText: "$8.99")
        let foodSectionC12 = FoodSection(name: "C12. Kung Pao Chicken 🌶", secondViewDetailText: "$8.99")
        let foodSectionC13 = FoodSection(name: "C13. Szechuan Chicken 🌶", secondViewDetailText: "$8.99")
        let foodSectionC14 = FoodSection(name: "C14. Hunan Chicken", secondViewDetailText: "$8.99")
        let foodSectionC15 = FoodSection(name: "C15. Chili Pepper Chicken🌶", secondViewDetailText: "$8.99")
        let foodSectionC16 = FoodSection(name: "C16. Chicken w. Garlic Sauce 🌶", secondViewDetailText: "$8.99")
        
        // 15 seafood
        let foodSectionSF1 = FoodSection(name: "S1. Shrimp w. Vegetables", secondViewDetailText: "$9.75")
        let foodSectionSF2 = FoodSection(name: "S2. Shrimp w. Broccoli", secondViewDetailText: "$9.75")
        let foodSectionSF3 = FoodSection(name: "S3. Shrimp w. Lobster Sauce", secondViewDetailText: "$9.75")
        let foodSectionSF4 = FoodSection(name: "S4. Shrimp w. Cashew Nuts", secondViewDetailText: "$9.75")
        let foodSectionSF5 = FoodSection(name: "S5. Sweet & Sour Shrimp", secondViewDetailText: "$9.75")
        let foodSectionSF6 = FoodSection(name: "S6. Sesame Shrimp", secondViewDetailText: "$9.75")
        let foodSectionSF7 = FoodSection(name: "S7. Shrimp w. Snow Peas", secondViewDetailText: "$9.75")
        let foodSectionSF8 = FoodSection(name: "S8. Kung Pao Shrimp 🌶", secondViewDetailText: "$9.75")
        let foodSectionSF9 = FoodSection(name: "S9. Shrimp w. Garlic Sauce 🌶", secondViewDetailText: "$9.75")
        let foodSectionSF10 = FoodSection(name: "S10. Curry Shrimp 🌶", secondViewDetailText: "$9.75")
        let foodSectionSF11 = FoodSection(name: "S11. Hot & Spicy Shrimp 🌶", secondViewDetailText: "$9.75")
        
        // name sections that is going to contain foodsections
        let appetizers = VillageWok(name: "APPETIZERS", detailText: "", foodSections: [foodSectionA1, foodSectionA2, foodSectionA3, foodSectionA4, foodSectionA5, foodSectionA6,foodSectionA7,foodSectionA8,foodSectionA9,foodSectionA10, foodSectionA11, foodSectionA12])
        
        let soups = VillageWok(name: "SOUPS", detailText: "", foodSections: [foodSectionS1, foodSectionS2, foodSectionS3, foodSectionS4, foodSectionS5, foodSectionS6, foodSectionS7, foodSectionS8])
        
        let lunchSpecials = VillageWok(name: "LUNCH SPECIALS", detailText: "(Served with choice of soup or egg roll & fried or steamed rice. Soup: egg drop soup or hot & sour soup or wonton soup)", foodSections: [foodSection1, foodSection2,foodSection3,foodSection4,foodSection5,foodSection6,foodSection7,foodSection8,foodSection9,foodSection10,foodSection11, foodSection12,foodSection13,foodSection14,foodSection15,foodSection16,foodSection17,foodSection18,foodSection19,foodSection20,foodSection21, foodSection22,foodSection23,foodSection24,foodSection25,foodSection26,foodSection27,foodSection28,foodSection29,foodSection30,foodSection31, foodSection32,foodSection33,foodSection34,foodSection35,foodSection36,foodSection37,foodSection38,foodSection39,foodSection40,foodSection41, foodSection42,foodSection43,foodSection44,foodSection45,foodSection46,foodSection47,foodSection48,foodSection49,foodSection50,foodSection51, foodSection52,foodSection53,foodSection54])
        
        let chefsSpecialties = VillageWok(name: "CHEFS SPECIALTIES", detailText: "(Served with rice. No rice with pan fried noodles order)", foodSections: [foodSectionF1, foodSectionF2,foodSectionF3,foodSectionF4,foodSectionF5,foodSectionF6,foodSectionF7,foodSectionF8,foodSectionF9,foodSectionF10,foodSectionF11, foodSectionF12,foodSectionF13,foodSectionF14,foodSectionF15,foodSectionF16,foodSectionF17,foodSectionF18])
        
        let specialCombos = VillageWok(name: "SPECIAL COMBOS", detailText: "(Served with egg roll, egg drop soup. No rice with lo mein order)", foodSections: [foodSectionCB1, foodSectionCB2, foodSectionCB3, foodSectionCB4, foodSectionCB5,foodSectionCB6, foodSectionCB7, foodSectionCB8, foodSectionCB9, foodSectionCB10])
        
        
        //---------------------------------------------------
        let authenticChinese = VillageWok(name: "AUTHENTIC CHINESE", detailText: "(Served with steamed rice, we can alter the spicy according to your taste.)", foodSections: [foodSectionAC1,foodSectionAC2,foodSectionAC3,foodSectionAC4,foodSectionAC5,foodSectionAC6,foodSectionAC7,foodSectionAC8,foodSectionAC9,foodSectionAC10,foodSectionAC11,foodSectionAC12,foodSectionAC13,foodSectionAC14,foodSectionAC15,foodSectionAC16,foodSectionAC17,foodSectionAC18,foodSectionAC19,foodSectionAC20,foodSectionAC21,foodSectionAC22,foodSectionAC23,foodSectionAC24,foodSectionAC25,foodSectionAC26,foodSectionAC27,foodSectionAC28,foodSectionAC29,foodSectionAC30,foodSectionAC31,foodSectionAC32,foodSectionAC33,foodSectionAC34,foodSectionAC35,foodSectionAC36,foodSectionAC37,foodSectionAC38,foodSectionAC39,foodSectionAC40,foodSectionAC41,foodSectionAC42,foodSectionAC43,foodSectionAC44,foodSectionAC45,foodSectionAC46,foodSectionAC47,foodSectionAC48,foodSectionAC49,foodSectionAC50,foodSectionAC51,foodSectionAC52,foodSectionAC53,foodSectionAC54,foodSectionAC55,foodSectionAC56,foodSectionAC57,foodSectionAC58,foodSectionAC59,foodSectionAC60,foodSectionAC61,foodSectionAC62,foodSectionAC63,foodSectionAC64,foodSectionAC65,foodSectionAC66,foodSectionAC67,foodSectionAC68,foodSectionAC69,foodSectionAC70,foodSectionAC71,foodSectionAC72,foodSectionAC73,foodSectionAC74,foodSectionAC75,foodSectionAC76,foodSectionAC77,foodSectionAC78,foodSectionAC79,foodSectionAC80,foodSectionAC81,foodSectionAC82,foodSectionAC83,foodSectionAC84,foodSectionAC85,foodSectionAC86,foodSectionAC87,foodSectionAC88,foodSectionAC89,foodSectionAC90,foodSectionAC91,foodSectionAC92,foodSectionAC93,foodSectionAC94,foodSectionAC95,foodSectionAC96,foodSectionAC97,foodSectionAC98,foodSectionAC99,foodSectionAC100,foodSectionAC101,foodSectionAC102,foodSectionAC103,foodSectionAC104,foodSectionAC105,foodSectionAC106,foodSectionAC107,foodSectionAC108,foodSectionAC109,foodSectionAC110,foodSectionAC111,foodSectionAC112])
        
        let tofu = VillageWok(name: "TOFU", detailText: "(Served with rice)", foodSections: [foodSectionT1,foodSectionT2,foodSectionT3,foodSectionT4,foodSectionT5,foodSectionT6,foodSectionT7,foodSectionT8,foodSectionT9])
        
        let healthAndDiet = VillageWok(name: "HEALTH AND DIET", detailText: "(Served with rice & brown sauce)", foodSections: [foodSectionH1,foodSectionH2,foodSectionH3,foodSectionH4,foodSectionH5])
        
        
        let vegetarian = VillageWok(name: "VEGETARIAN", detailText: "(Served with rice)", foodSections: [foodSectionV1,foodSectionV2,foodSectionV3,foodSectionV4,foodSectionV5,foodSectionV6])
        
        let friedRice = VillageWok(name: "FRIED RICE", detailText: "", foodSections: [foodSectionFR1, foodSectionFR2, foodSectionFR3, foodSectionFR4, foodSectionFR5, foodSectionFR6, foodSectionFR7])
        
        let loMein = VillageWok(name: "NOODLE", detailText: "", foodSections: [foodSectionLM1, foodSectionLM2, foodSectionLM3, foodSectionLM4, foodSectionLM5, foodSectionLM6, foodSectionLM7, foodSectionLM8, foodSectionMF1, foodSectionMF2, foodSectionMF3, foodSectionMF4, foodSectionMF5])
        
        let mooShi = VillageWok(name: "MOO SHI", detailText: "(Served with 4 pancakes) ", foodSections: [foodSectionM1, foodSectionM2, foodSectionM3, foodSectionM4, foodSectionM5])
        
        let sideOrder = VillageWok(name: "SIDE ORDER", detailText: "", foodSections: [foodSectionSO1, foodSectionSO2, foodSectionSO3, foodSectionSO4, foodSectionSO5])
        
        let beverage = VillageWok(name: "BEVERAGE", detailText: "", foodSections: [foodSectionBV1,foodSectionBV2,foodSectionBV3,foodSectionBV4,foodSectionBV5,foodSectionBV6,foodSectionBV7,foodSectionBV8])
        
        
        let pork = VillageWok(name: "PORK", detailText: "(Served with rice)", foodSections: [foodSectionP1, foodSectionP2, foodSectionP3, foodSectionP4, foodSectionP5, foodSectionP6, foodSectionP7])
        
        let beef = VillageWok(name: "BEEF", detailText: "(Served with rice)", foodSections: [foodSectionB1, foodSectionB2, foodSectionB3, foodSectionB4, foodSectionB5, foodSectionB6, foodSectionB7, foodSectionB8, foodSectionB9, foodSectionB10, foodSectionB11, foodSectionB12])
        
        let chicken = VillageWok(name: "CHICKEN", detailText: "(Served with rice)", foodSections: [foodSectionC1,foodSectionC2,foodSectionC3,foodSectionC4,foodSectionC5,foodSectionC6,foodSectionC7,foodSectionC8,foodSectionC9,foodSectionC10,foodSectionC11,foodSectionC12,foodSectionC13,foodSectionC14,foodSectionC15,foodSectionC16])
        
        let seafood = VillageWok(name: "SEAFOOD", detailText: "(Served with rice)", foodSections: [foodSectionSF1, foodSectionSF2, foodSectionSF3, foodSectionSF4, foodSectionSF5, foodSectionSF6, foodSectionSF7, foodSectionSF8, foodSectionSF9, foodSectionSF10, foodSectionSF11])
        
        
        // menu sort order
        return [appetizers, soups, lunchSpecials, chefsSpecialties, specialCombos, authenticChinese, chicken, beef, pork, seafood, tofu, healthAndDiet, vegetarian, friedRice, loMein, mooShi, sideOrder, beverage]
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return villageWoks.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: villageWokCellIdentifier, for: indexPath)
        
        let villageWok = villageWoks[indexPath.row]
        
        cell.textLabel?.text = villageWok.name
        
        cell.detailTextLabel?.text = villageWok.detailText
        
        cell.detailTextLabel?.textColor = UIColor.darkGray
        
        let foodImage = villageWok.name
        
        cell.imageView?.image = UIImage(named: foodImage)
        
        
        cell.imageView?.contentMode = UIViewContentMode.scaleAspectFit
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        cell.accessoryType = .disclosureIndicator
        
        
        // cell.backgroundColor = UIColor(white: 1, alpha: 0.5)
        cell.backgroundColor = .clear
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let indexPath = self.tableView.indexPathForSelectedRow
        
        guard let selectedRow = indexPath?.row else { return }
        
        let selectedVillageWok = villageWoks[selectedRow]
        
        let destinationVC = segue.destination as? FoodSectionTVC
        
        destinationVC?.foodSections = selectedVillageWok.foodSections
        
    }

}
