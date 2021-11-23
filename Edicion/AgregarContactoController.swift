//
//  AgregarContactoController.swift
//  Edicion
//
//  Created by Alumno on 11/9/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class AgregarContactoController : UIViewController {
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtCorreo: UITextField!
    @IBOutlet weak var txtCelular: UITextField!
    
    var callBackAgregarContacto : ((Contacto)->Void)?
    
    override func viewDidLoad() {
        self.title = "agregar contacto"
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        let contacto = Contacto(nombre: txtNombre.text!, celular: txtCelular.text!, correo: txtCorreo.text!)
        callBackAgregarContacto!(contacto)
        self.navigationController!.popViewController(animated: true)
        
    }
}

