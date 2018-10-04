//
//  CoreDataHandler.swift
//  TasksApp
//
//  Created by SmartTech on 4/2/18.
//  Copyright © 2018 Developers2Be. All rights reserved.
//

import UIKit
import CoreData


class CoreDataHandler:NSObject {
    
    
    
   fileprivate class func getAppDelegateObject () -> NSManagedObjectContext {
        
        let appDelegateObj = UIApplication.shared.delegate as! AppDelegate
        return appDelegateObj.persistentContainer.viewContext
        
    }
    
    
    class func saveData (parameters: [String:String],entityName:String) -> Bool {
        let context = getAppDelegateObject()
        let entity = NSEntityDescription.entity(forEntityName: entityName, in: context)
        let mangedObject = NSManagedObject(entity: entity!, insertInto: context)
        
    
        mangedObject.setValue(parameters["firstName"]!, forKey: "firstName")
        mangedObject.setValue( Int(parameters["Age"]!)  , forKey: "age")
    mangedObject.setValue(parameters["Email"]!, forKey: "email")
    mangedObject.setValue(parameters["lastName"], forKey: "lastName")

        do {
        
        try context.save()
            return true
        } catch {
            print ("Error")
            return false
        }
      
    }
    
    
    class func getData () -> [User]? {
        let contex = getAppDelegateObject()
        var arrayOfUsers:[User]?
        
        
        do {
        arrayOfUsers = try contex.fetch(User.fetchRequest())
            return arrayOfUsers
        } catch {
            return arrayOfUsers
        }    
    }
    
    
    
    
    
}



