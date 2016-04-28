//
//  User.swift
//  EjercicioClase8
//
//  Created by SP08 on 7/4/16.
//
//

import Foundation

class User{
    
    var nombre : String = ""
    var nombreImagen : String = ""
    var descripcion : String = ""
    
    init(nombre: String, andNombreImagen nombreImagen: String ,andDescripcion descripcion:String){
    
    self.nombre = nombre
    self.nombreImagen = nombreImagen
    self.descripcion = descripcion
    

    }
}