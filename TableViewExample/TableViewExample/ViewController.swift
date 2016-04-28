//
//  ViewController.swift
//  TableViewExample
//
//  Created by SP08 on 8/4/16.
//  Copyright © 2016 SP08. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate ,UITableViewDataSource {

    @IBOutlet weak var tableViewTest: UITableView!
    
     
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableViewTest.delegate = self
        tableViewTest.dataSource = self
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return 10
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        //let data = intearnaldata si si tengo un array de con los datos
        let dequeued = tableView.dequeueReusableCellWithIdentifier("prototypeID",forIndexPath: indexPath) as! TableViewCell
        //let cell = dequeued as TableViewCell
        dequeued.tituloPrototype.text = "CLON"
        dequeued.subTituloPrototype.text = "CLON22"
        dequeued.precioPrototype.text = "99,9"
        dequeued.imagen.image = UIImage(named: "img-profile-2")
        return dequeued
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        performSegueWithIdentifier("EventCell", sender: nil)
        
        
    }

    

}

