//
//  DetallesController.swift
//  Practico1
//
//  Created by SP08 on 22/4/16.
//  Copyright © 2016 SP08. All rights reserved.
// diego.pais29@gmail.com

import UIKit

class DetallesController: UIViewController {
    
    
    
    @IBOutlet weak var imgProducto: UIImageView!
    @IBOutlet weak var lblDescuento: UILabel!
    @IBOutlet weak var lblProducto: UILabel!
    @IBOutlet weak var btnQR: UIButton!
    
    var cupon: Cupon!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Para Agregar borde al boton
        
        lblDescuento.text = cupon.descuento
        lblProducto.text = cupon.producto
        imgProducto.image = UIImage(named: cupon.imagen!)
        //playButton.setImage(UIImage(named: "play.png"), forState: UIControlState.Normal)
        GenerarQR();
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
       
   
    
    func GenerarQR() {
        
        
        let data = cupon.producto!.dataUsingEncoding(NSISOLatin1StringEncoding)
        
        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            
            filter.setValue(data, forKey: "inputMessage")
            
            filter.setValue("H", forKey: "inputCorrectionLevel")
            
            let transform = CGAffineTransformMakeScale(10, 10)
            
            if let output = filter.outputImage?.imageByApplyingTransform(transform) {
                
                btnQR.setImage( UIImage(CIImage: output), forState: UIControlState.Normal)
                
            }
            
        }
        
        
        
    }
    
    /*
    func generateQRCode()->UIImage? {
        
        var nombreProducto = cupon.producto
        let data = nombreProducto!.dataUsingEncoding(NSISOLatin1StringEncoding)
        
        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            
            filter.setValue(data, forKey: "inputMessage")
            filter.setValue("H", forKey: "inputCorrectionLevel")
            let transform = CGAffineTransformMakeScale(10, 10)
            if let output = filter.outputImage?.imageByApplyingTransform(transform) {
                
                return UIImage(CIImage: output)
                
            }
            
        }
        
        return nil
        
    }*/
    
    
}