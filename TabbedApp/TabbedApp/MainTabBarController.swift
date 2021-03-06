//
//  MainTabBarController.swift
//  TabbedApp
//
//  Created by Joohae Kim on 5/11/18.
//  Copyright © 2018 Phorus. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog("Entering")

        self.viewControllers?.append(self.storyboard!.instantiateViewController(withIdentifier: "IDSecondViewController"))
        self.viewControllers?.append(self.storyboard!.instantiateViewController(withIdentifier: "IDThirdViewController"))

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        self.hidesBottomBarWhenPushed = true;
        NSLog("viewWillAppear")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        NSLog("viewDidAppear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        NSLog("prepare")
    }

}
