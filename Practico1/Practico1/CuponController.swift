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
    
    var cuponTemp = Cupon(nombre: "", andDescuento: "", andImagen: "")
    var cupon1 = Cupon(nombre: "Desodorante Rexona", andDescuento: "Descuento 20%", andImagen: "ProdRexona")
    var cupon2 = Cupon(nombre: "Hilo Dental", andDescuento: "Descuento 40%", andImagen: "colgateHilo")
    var cupon3 = Cupon(nombre: "Pasta Dental", andDescuento: "Descuento 30%", andImagen: "colgatePasta")
    var cupon4 = Cupon(nombre: "Enjuague Bucal", andDescuento: "Descuento 30%", andImagen: "colgatePlax")
    var cupon5 = Cupon(nombre: "Jabon Dove", andDescuento: "Descuento 20%", andImagen: "dove")
    var cupon6 = Cupon(nombre: "Cepillo Dental Oral-B", andDescuento: "Descuento 15%", andImagen: "oralB")
    var lstCupones = [Cupon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lstCupones.append(cupon1)
        lstCupones.append(cupon2)
        lstCupones.append(cupon3)
        lstCupones.append(cupon4)
        lstCupones.append(cupon5)
        lstCupones.append(cupon6)
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
        
        return lstCupones.count
        //return 10
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        //let data = intearnaldata si si tengo un array de con los datos
        let dequeued = tableView.dequeueReusableCellWithIdentifier("prototypeID",forIndexPath: indexPath) as! TableViewCell
        //let cell = dequeued as TableViewCell
        //dequeued.lblDescuento.text = "DESCUENTO 20%"
        //dequeued.lblNombreProducto.text = "DESODORANTE REXONA"
        //dequeued.imgCell.image = UIImage(named: "ProdRexona")
        
        dequeued.lblDescuento.text = lstCupones[indexPath.row].descuento
        dequeued.lblNombreProducto.text = lstCupones[indexPath.row].producto
        dequeued.imgCell.image = UIImage(named: lstCupones[indexPath.row].imagen!)
        return dequeued
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        //Cupon para pasar a detalles
        cuponTemp.descuento = lstCupones[indexPath.row].descuento
        cuponTemp.producto = lstCupones[indexPath.row].producto
        cuponTemp.imagen = lstCupones[indexPath.row].imagen!
        
        performSegueWithIdentifier("EventCell", sender: nil)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Create a variable that you want to send
        //var newCupon = Cupon(nombre: "NUEVO", andDescuento: "NUEVO", andImagen: "ProdRexona")//
        
        // Create a new variable to store the instance of PlayerTableViewController
        let destinationVC = segue.destinationViewController as! DetallesController
        destinationVC.cupon = cuponTemp
    
    }

    
}