//
//  tasksVC.swift
//  TasksApp
//
//  Created by SmartTech on 4/2/18.
//  Copyright © 2018 Developers2Be. All rights reserved.
//

import UIKit

class tasksVC: UIViewController {

    @IBOutlet weak var buSave: UIButton!
    @IBOutlet weak var txtTaskDesc: UITextView!
    @IBOutlet weak var laTaskName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        buSave.layer.borderWidth = 2
        buSave.layer.cornerRadius = 9
//        laTaskName.addTarget(self, action: #selector(sadasd(_:)), for: .editingChanged)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sadasd(_ sender: UITextField) {
        
        print(sender.text!)
    }
    @IBAction func kolk(_ sender: UITextField) {
        print(sender.text!)

    }

    @IBAction func saveTask(_ sender: UIButton) {
    }

}
