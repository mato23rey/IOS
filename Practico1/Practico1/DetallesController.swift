//
//  DetallesController.swift
//  Practico1
//
//  Created by SP08 on 22/4/16.
//  Copyright © 2016 SP08. All rights reserved.
//

import UIKit

class DetallesController: UIViewController {
    
    
    
    @IBOutlet weak var imgProducto: UIImageView!
    @IBOutlet weak var lblDescuento: UILabel!
    @IBOutlet weak var lblProducto: UILabel!
    
    var cupon: Cupones!;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Para Agregar borde al boton
        
        lblDescuento.text = cupon.descuento
        lblProducto.text = cupon.producto
        imgProducto.image = UIImage(named: cupon.imagen!)      
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
       
   
    
}