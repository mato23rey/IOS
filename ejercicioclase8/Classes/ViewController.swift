//
//  ViewController.swift
//  EjercicioClase8
//
//  Created by Diego Pais on 4/1/16.
//
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var txtDescripcion: UITextView!
    @IBOutlet weak var profileImageView: UIImageView!
    
    var walter = User(nombre: "Walter White", andNombreImagen: "img-profile", andDescripcion: "VAMOS HACER METH")
    var jesse = User(nombre: "Jesse Pinkman", andNombreImagen: "img-profile-2", andDescripcion: "VAMOS A CONSUMIR METH")
    var tuco = User(nombre: "Tuco Salamanca", andNombreImagen: "img-profile-4", andDescripcion: "VAMOS A MATAR A WALTER")
    var skyler = User(nombre: "Skyler White", andNombreImagen: "img-profile-3", andDescripcion: "VAMOS A MATAR A JESSE")
    var lstUsers: [User] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        lstUsers.append(walter)
        lstUsers.append(jesse)
        lstUsers.append(tuco)
        lstUsers.append(skyler)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        
        self.profileImageView.layer.cornerRadius = self.profileImageView.frame.size.width / 2.0
        self.profileImageView.layer.borderWidth = 2
        self.profileImageView.layer.borderColor = UIColor.whiteColor().CGColor
        
    }
    @IBAction func Change(sender: UIButton) {
        
        var numeroUser = Int.randomFrom(0,to:lstUsers.count-1)
        lblName.text = lstUsers[numeroUser].nombre
        txtDescripcion.text = lstUsers[numeroUser].descripcion
        profileImageView.image = UIImage(named: lstUsers[numeroUser].nombreImagen)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
}
