//
//  ViewController.swift
//  GpsPods
//
//  Created by SP08 on 13/5/16.
//  Copyright © 2016 SP08. All rights reserved.
//

import UIKit
import SwiftLocation


class ViewController: UIViewController  {

    @IBOutlet weak var datos: UILabel!
    @IBOutlet weak var activity: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        activity.startAnimating()
       
        
            try! SwiftLocation.shared.currentLocation(Accuracy.City, timeout: 20, onSuccess: { (location) -> Void in
                // location is a CLPlacemark                
                
                self.datos.text = location?.coordinate.latitude.description
                
                
                }) { (error) -> Void in
                    // something went wrong
                    self.datos.text = "error"

                
            }
        
        
        
        activity.stopAnimating()
        
        
    }
    

    

}

