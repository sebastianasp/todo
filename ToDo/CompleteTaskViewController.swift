//
//  CompleteTaskViewController.swift
//  ToDo
//
//  Created by Sebastian Asp on 2017-05-30.
//  Copyright © 2017 Sebastian Asp. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    
    @IBOutlet weak var taskLabel: UILabel!
    
    var task = Task()
    var previousVC = ViewController()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if task.important {
            taskLabel.text = "❗️\(task.name)"
        } else {
            taskLabel.text = task.name
        }
    }

    @IBAction func completeTask(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }

   

}
