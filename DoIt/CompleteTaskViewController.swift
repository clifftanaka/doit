//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Cliff Tanaka on 2017/03/09.
//  Copyright © 2017 kurifu. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    var task : Task? = nil
    
    @IBOutlet weak var taskLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if task!.important {
            taskLabel.text = "❗️ \(task!.name!)"
        } else {
            taskLabel.text = task!.name!
        }
    }
    
    @IBAction func completeTask(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController!.popViewController(animated: true)
    }
    
}
