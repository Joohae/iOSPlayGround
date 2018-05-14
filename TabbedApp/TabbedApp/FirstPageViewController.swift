//
//  FirstPageViewController.swift
//  TabbedApp
//
//  Created by Joohae Kim on 5/11/18.
//  Copyright © 2018 Phorus. All rights reserved.
//

import UIKit

class FirstPageViewController: UIPageViewController {

    let maximumPage: Int = 10;
    var currentPage: Int = 0;

    let componentStoryboard: UIStoryboard = UIStoryboard(name: "Components", bundle: Bundle.main);
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dataSource = self
        
        let thepage:DataPageViewController = (componentStoryboard.instantiateViewController(withIdentifier: "IDFirstPage") as? DataPageViewController)!
        thepage.mainLabelText = "1"
        setViewControllers([thepage], direction: .forward, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}

extension FirstPageViewController: UIPageViewControllerDataSource {

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {

        print("viewControllerBefore %d", currentPage)
        let previousIndex = currentPage - 1
        
        guard previousIndex >= 0 else {
            return nil
        }
//
//        guard maximumPage > previousIndex else {
//            return nil
//        }

        currentPage = previousIndex;
        let thepage:DataPageViewController = componentStoryboard.instantiateViewController(withIdentifier: "IDFirstPage") as! DataPageViewController
        thepage.mainLabelText = String.localizedStringWithFormat("From prev %d", currentPage + 1)
        return thepage
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {

        print("viewControllerAfter %d", currentPage)
    
        let nextIndex = currentPage + 1
        let orderedViewControllersCount = maximumPage
        
        guard orderedViewControllersCount != nextIndex else {
            return nil
        }
        
        guard orderedViewControllersCount > nextIndex else {
            return nil
        }

        currentPage = nextIndex;
        let thepage:DataPageViewController = componentStoryboard.instantiateViewController(withIdentifier: "IDFirstPage") as! DataPageViewController
        thepage.mainLabelText = String.localizedStringWithFormat("From next %d", currentPage + 1)
        return thepage
    }
}
