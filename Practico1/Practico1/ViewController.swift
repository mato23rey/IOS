//
//  ViewController.swift
//  Practico1
//
//  Created by SP08 on 14/4/16.
//  Copyright © 2016 SP08. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BtnSignIn: UIButton!
    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPassWord: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Para Agregar borde al boton
        BtnSignIn.backgroundColor = UIColor.clearColor()
        BtnSignIn.layer.cornerRadius = 5
        BtnSignIn.layer.borderWidth = 1
        BtnSignIn.layer.borderColor = UIColor.blackColor().CGColor
       
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func signIn(sender: AnyObject) {
        
        
        performSegueWithIdentifier("InicioShow", sender: nil)

        /*
        if(txtUser.text=="ucu@ucu.com" && txtPassWord.text=="ucu2016"){
            
            performSegueWithIdentifier("InicioShow", sender: nil)
            
        }else{
        
            //Mostrar mensaje de error
            
        }*/
    }

}

