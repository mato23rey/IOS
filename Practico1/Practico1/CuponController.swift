//
//  CuponController.swift
//  Practico1
//
//  Created by SP08 on 21/4/16.
//  Copyright © 2016 SP08. All rights reserved.
//

import UIKit


class CuponController: UIViewController, UITableViewDelegate ,UITableViewDataSource  {
    
    
    
    @IBOutlet weak var tableCupones: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Para Agregar borde al boton
        tableCupones.delegate = self
        tableCupones.dataSource = self

        
        // Do any additional setup after loading the view, typically from a nib.
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
        dequeued.lblDescuento.text = "DESCUENTO 20%"
        dequeued.lblNombreProducto.text = "DESODORANTE REXONA"
        dequeued.imgCell.image = UIImage(named: "ProdRexona")
        return dequeued
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        performSegueWithIdentifier("EventCell", sender: nil)
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Create a variable that you want to send
        var newCupon = Cupones(nombre: "NUEVO", andDescuento: "NUEVO", andImagen: "ProdRexona")//
        
        // Create a new variable to store the instance of PlayerTableViewController
        let destinationVC = segue.destinationViewController as! DetallesController
        destinationVC.cupon = newCupon
    
    }

    
}