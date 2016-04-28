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
    @IBOutlet weak var lblErr: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Para Agregar borde al boton
        BtnSignIn.backgroundColor = UIColor.clearColor()
        BtnSignIn.layer.cornerRadius = 5
        BtnSignIn.layer.borderWidth = 1
        BtnSignIn.layer.borderColor = UIColor.blackColor().CGColor
        lblErr.hidden = true
       
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func signIn(sender: AnyObject) {


        if(txtUser.text=="ucu@ucu.com" && txtPassWord.text=="ucu2016"){
            
            performSegueWithIdentifier("InicioPresent", sender: nil)
            
        }else{
        
            //Mostrar mensaje de error
            lblErr.hidden = false
            txtPassWord.text = ""
            
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       
        // Create a new variable to store the instance of PlayerTableViewController
        //let destinationVC = segue.destinationViewController as! InicioController
        //destinationVC.email = txtUser.text
        }
    

}

