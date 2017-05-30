//
//  addTaskViewController.swift
//  ToDo
//
//  Created by Sebastian Asp on 2017-05-29.
//  Copyright © 2017 Sebastian Asp. All rights reserved.
//

import UIKit

class addTaskViewController: UIViewController {

    @IBOutlet weak var addTextTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

 @IBAction func addTasks(_ sender: Any) {
    
    // Create a task from the outlet information
    
    let task = Task()
    task.name = addTextTextField.text!
    task.important = importantSwitch.isOn
    
    // Add new task from arrat from previous viewController
    }



}
