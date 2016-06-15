//
//  NewPlaceViewController.swift
//  Homework Day 8 Second Try
//
//  Created by Erik Roberts on 6/14/16.
//  Copyright © 2016 Erik Roberts. All rights reserved.
//

import UIKit

class NewPlaceViewController: UIViewController {

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descriptionField: UITextField!
    @IBOutlet weak var latitudeField: UITextField!
    @IBOutlet weak var longitudeField: UITextField!
    
    var inputTitle: String? = ""
    var inputDesc: String? = ""
    var inputLatitude : String? = ""
    var inputLong : String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func saveButtonTapped(sender: UIButton) {
        
        let place = Place()
        
        inputTitle = titleField.text
        inputDesc = descriptionField.text
        inputLatitude = latitudeField.text //TODO: Cast this as an Int in a later step
        inputLong = longitudeField.text
        
        var inputLatDouble : Double = NSString(string: inputLatitude!).doubleValue
        var inputLongDouble : Double = NSString(string: inputLong!).doubleValue
        
        place.title = inputTitle
        place.desc = inputDesc
        place.coordinate.latitude = inputLatDouble
        place.coordinate.longitude = inputLongDouble
        
        PlacesController.sharedInstance.addPlace(place)
        
        print(PlacesController.sharedInstance.getPlaces())
        
        
    }
    

    @IBAction func backButtonTapped(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
