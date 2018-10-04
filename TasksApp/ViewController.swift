//
//  ViewController.swift
//  TasksApp
//
//  Created by SmartTech on 4/2/18.
//  Copyright © 2018 Developers2Be. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtAge: UITextField!
    @IBOutlet weak var txtLast: UITextField!
    @IBOutlet weak var txtFirst: UITextField!
    
    var gender = ["Male","Female"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        
        let components = Calendar.current.dateComponents([ .day, .month, .year], from: sender.date)
        if let day = components.day , let month = components.month , let year = components.year {
            print("\(day),\(month),\(year)")
            
        }
   
        
    }

    @IBAction func buDone (_ sender : Any) {
        let parameters = [
        "firstName":txtFirst.text ?? "",
        "lastName":txtLast.text ?? "",
        "Age":txtAge.text ?? "" ,
        "Email":txtEmail.text ?? ""
        ]

        print(CoreDataHandler.saveData(parameters: parameters,entityName: "User"))
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "tasksVC") as! tasksVC
        navigationController?.pushViewController(secondVC, animated: true)
   
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gender.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return gender[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(gender[row])
    }

}

