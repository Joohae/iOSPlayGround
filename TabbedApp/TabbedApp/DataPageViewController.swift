//
//  DataPageViewController.swift
//  TabbedApp
//
//  Created by Joohae Kim on 5/11/18.
//  Copyright © 2018 Phorus. All rights reserved.
//

import UIKit

class DataPageViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    var mainLabelText: String = "";

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mainLabel.text = mainLabelText
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
