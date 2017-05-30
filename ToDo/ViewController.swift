//
//  ViewController.swift
//  ToDo
//
//  Created by Sebastian Asp on 2017-05-29.
//  Copyright © 2017 Sebastian Asp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var tasks : [Task] = []
    var selectedIndex = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = makeTasks()
        tableView.delegate = self
        tableView.dataSource = self
        
    }

 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
            cell.textLabel?.text = "❗️\(task.name)"
        } else {
            cell.textLabel?.text = task.name
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedIndex = indexPath.row
        let task = tasks[indexPath.row]
        performSegue(withIdentifier: "selectTaskSegue", sender: task)
    }

    
    func makeTasks() -> [Task] {
        
        let task1 = Task()
        task1.name = "Walk the dog"
        task1.important = false
        
        let task2 = Task()
        task2.name = "Buy icecream"
        task2.important = true
        
        let task3 = Task()
        task3.name = "Wash hair"
        task3.important = false
        
        return [task1,task2,task3]
    }

    @IBAction func plusTapped(_ sender: Any) {
        performSegue(withIdentifier: "addTaskVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addTaskVC" {
        let nextVC = segue.destination as! addTaskViewController
        nextVC.previousVC = self
        }
        if segue.identifier == "selectTaskSegue" {
        let nextVC = segue.destination as! CompleteTaskViewController
            nextVC.task = sender as! Task
            nextVC.previousVC = self

        }
        
    }
}

