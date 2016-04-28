//
//  ViewController.swift
//  Practico1
//
//  Created by SP08 on 14/4/16.
//  Copyright © 2016 SP08. All rights reserved.
//

import UIKit

class InicioController: UIViewController {
    
    
    @IBOutlet weak var lblPuntos: UILabel!
    @IBOutlet weak var btnImagenTarjeta: UIButton!
    @IBOutlet weak var btnImagenQR: UIButton!
    var email :String! //viene del login
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Para Agregar borde al boton
       btnImagenQR.hidden = true;
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func GenerarQR(sender: AnyObject) {
        
        btnImagenQR.hidden = false;
        btnImagenTarjeta.hidden = true;
        
        let data = "ucu@ucu.com".dataUsingEncoding(NSISOLatin1StringEncoding)
        
        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            
            filter.setValue(data, forKey: "inputMessage")
            
            filter.setValue("H", forKey: "inputCorrectionLevel")
            
            let transform = CGAffineTransformMakeScale(10, 10)
            
            if let output = filter.outputImage?.imageByApplyingTransform(transform) {
               
                btnImagenQR.setImage( UIImage(CIImage: output), forState: UIControlState.Normal)
                
            }
            
        }
        
        
       
    }
    
    
    @IBAction func VolverTarjeta(sender: AnyObject) {
        
        btnImagenQR.hidden = true;
        btnImagenTarjeta.hidden = false;
    }
    
    
    

    
    
}
