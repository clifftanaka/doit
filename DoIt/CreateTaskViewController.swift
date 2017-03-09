//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Cliff Tanaka on 2017/03/09.
//  Copyright © 2017 kurifu. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var taskSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTask(_ sender: Any) {
        // Create a Task from the outlet information
        let task = Task()
        task.name = name.text!
        task.important = taskSwitch.isOn
        
        // Add new task to array in previous ViewController
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
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
