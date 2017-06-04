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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

 @IBAction func addTasks(_ sender: Any) {
    
    // Create a task from the outlet information
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    let task = Task(context: context)
    
    task.name = addTextTextField.text!
    task.important = importantSwitch.isOn
    (UIApplication.shared.delegate as! AppDelegate).saveContext()
    
    // Pop Back
    
    navigationController!.popViewController(animated: true)
    }



}
