//
//  CoreData.swift
//  WeatherTest
//
//  Created by Zimma on 22.06.2018.
//  Copyright © 2018 Zimma. All rights reserved.
//

import UIKit
import CoreData

class CoreData: NSObject {
    
    private class func getContext() -> NSManagedObjectContext {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        return appDelegate.persistentContainer.viewContext
    }
    
    class func saveCityCoordinate(name: String, lon: Double, lat: Double) -> Bool {
        let context = getContext()
        let entity = NSEntityDescription.entity(forEntityName: "CityCoordinate", in: context)
        let manageObject = NSManagedObject(entity: entity!, insertInto: context)
        
        manageObject.setValue(name, forKey: "name")
        manageObject.setValue(lon, forKey: "lon")
        manageObject.setValue(lat, forKey: "lat")
        
        do {
            try context.save()
            return true
        } catch {
            return false
        }
    }
    
    class func fetchObject() -> [CityCoordinate]? {
        let context = getContext()
        var name:[CityCoordinate]? = nil
        
        do {
            name = try context.fetch(CityCoordinate.fetchRequest())
            return name
        } catch {
            return name
        }
    }

}
