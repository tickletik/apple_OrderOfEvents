//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by ronny abraham on 11/22/17.
//  Copyright © 2017 ronny abraham. All rights reserved.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet weak var statusLabel: UILabel!
    var eventNumber: Int = 1
    
    func updateLifeCycleStatus(status: String) {
        if let existingText = statusLabel.text {
            statusLabel.text = "\(existingText)\nEvent number \(eventNumber) was \(status)"
        }
        
        eventNumber += 1
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLifeCycleStatus(status: "viewDidLoad")
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        updateLifeCycleStatus(status: "viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        updateLifeCycleStatus(status: "viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        updateLifeCycleStatus(status: "viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        updateLifeCycleStatus(status: "viewDidDisappear")
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
