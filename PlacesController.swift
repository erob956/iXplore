//
//  PlacesController.swift
//  Homework Day 8 Second Try
//
//  Created by Erik Roberts on 6/14/16.
//  Copyright © 2016 Erik Roberts. All rights reserved.
//

import Foundation
import MapKit

class PlacesController  {
    
    var arrayOfPlaces : [Place] = []

    // Singleton design pattern
    class var sharedInstance: PlacesController {
        struct Static {
            static var instance:PlacesController?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token)    {
            Static.instance = PlacesController()
        }
        return Static.instance!
    }
    
    //MAKE SURE TO CALL THIS SOMEWHERE!!
    func setDate(place : Place) {
        let date = NSDate()
        print (date)
    }
    
    func addPlace(place : Place) {
        
        arrayOfPlaces.append(place)
        PersistenceManager.saveNSArray(arrayOfPlaces, fileName: "Archived array")
    }
    
    private func readPlacesFromMemory() -> [Place] {
        //let place = Place()
        arrayOfPlaces.append(Place.placeList()[0])
        arrayOfPlaces.append(Place.placeList()[1])
        arrayOfPlaces.append(Place.placeList()[2])
        
        print(arrayOfPlaces)
        return arrayOfPlaces
    }
    
    func getPlaces() -> [Place] {
        if (arrayOfPlaces.count == 0) {
            arrayOfPlaces = readPlacesFromMemory()
            return arrayOfPlaces
        } else {
        return arrayOfPlaces
        }
    }
    

    
}
