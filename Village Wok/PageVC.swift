//
//  PageVC.swift
//  Village Wok
//
//  Created by Grace Tang on 3/1/17.
//  Copyright © 2017 tangfamily. All rights reserved.
//

import UIKit

class PageVC: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {

    lazy var VCArr: [UIViewController] = {
        
        return [self.VCInstance(name: "FirstVC"),
                self.VCInstance(name: "SecondVC"),
                self.VCInstance(name: "ThirdVC"),
                self.VCInstance(name: "FourthVC"),
                self.VCInstance(name: "FifthVC"),
                self.VCInstance(name: "SixthVC"),
                self.VCInstance(name: "SeventhVC"),
                self.VCInstance(name: "EighthVC"),
                self.VCInstance(name: "NinethVC"),
                self.VCInstance(name: "TenthVC"),
                self.VCInstance(name: "EleventhVC"),
                self.VCInstance(name: "TwelfthVC"),
                self.VCInstance(name: "ThirteenthVC"),
                self.VCInstance(name: "FourteenthVC"),
                self.VCInstance(name: "FifteenthVC"),
                self.VCInstance(name: "SixteenthVC"),
                self.VCInstance(name: "SeventeenthVC"),
                self.VCInstance(name: "EighteenthVC"),
                
                ]
        
    }()
    
    private func VCInstance(name: String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: name)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        self.dataSource = self
        self.delegate = self
        
        if let firstVC = VCArr.first {
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
        
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.lightGray
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor.yellow
        
    }
    
    
    
     override func viewDidLayoutSubviews() {
     super.viewDidLayoutSubviews()
     
     for view in self.view.subviews {
     if view is UIScrollView {
     view.frame = UIScreen.main.bounds
     } else if view is UIPageControl {
     view.backgroundColor = UIColor.clear
     }
     }
     
     }
 
    
    // not working here.
    /*
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        for subView in view.subviews {
            if  subView is  UIPageControl {
                subView.frame.origin.y = self.view.frame.size.height - 80
                
            }
        }
    }
    */
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = VCArr.index(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            return VCArr.last
        }
        
        guard VCArr.count > previousIndex else {
            return nil
        }
        
        return VCArr[previousIndex]
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = VCArr.index(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        
        guard nextIndex < VCArr.count else {
            return VCArr.first
        }
        
        guard VCArr.count > nextIndex else {
            return nil
        }
        
        return VCArr[nextIndex]
    }
    
    
    public func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return VCArr.count
    }
    
    
    public func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        guard let firstViewController = viewControllers?.first,
            let firstViewControllerIndex = VCArr.index(of: firstViewController) else {
                return 0
        }
        
        return firstViewControllerIndex
    }

}
