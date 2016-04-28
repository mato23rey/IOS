//
//  Productos.swift
//  TableViewExample
//
//  Created by SP08 on 13/4/16.
//  Copyright © 2016 SP08. All rights reserved.
//

import Foundation

class Cupon{
    
    var producto : String? = ""
    var descuento : String? = ""
    var imagen : String? = ""
    
    init(nombre: String? = nil, andDescuento documento : String? = nil ,andImagen imagen: String? = nil ){
        
        self.producto = nombre
        self.descuento = documento
        self.imagen = imagen
    }

    
    
    
}
