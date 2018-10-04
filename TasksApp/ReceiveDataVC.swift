//
//  ReceiveDataVC.swift
//  TasksApp
//
//  Created by SmartTech on 4/2/18.
//  Copyright © 2018 Developers2Be. All rights reserved.
//

import UIKit

class ReceiveDataVC: UIViewController {

    @IBOutlet weak var laLastName: UILabel!
    @IBOutlet weak var laFirstName: UILabel!
    @IBOutlet weak var laAge: UILabel!
    
    @IBOutlet weak var laEmail: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let usersArray = CoreDataHandler.getData() {
            for item in usersArray {
                
                laLastName.text = item.lastName ?? ""
                laFirstName.text = item.firstName ?? ""
                laAge.text = String (item.age)
                laEmail.text = item.email
                
                
            }
            
            
        }
        
        
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
