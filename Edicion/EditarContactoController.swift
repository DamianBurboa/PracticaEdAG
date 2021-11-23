//
//  EditarContactoController.swift
//  Edicion
//
//  Created by Alumno on 11/2/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class EditarContactoController : UIViewController {
    
    var contacto : Contacto?
    var indice: Int?
    @IBOutlet weak var txtCelular: UITextField!
    
    @IBOutlet weak var txtCorreo: UITextField!
    @IBOutlet weak var txtNombre: UITextField!
    
    var callbackActualizarTVContactos : (()-> Void)?
    var callbackEliminarContacto : ((Int)->Void)?
    
    override func viewDidLoad() {
        self.title = "Editar Contacto"
        
        txtCorreo.text = contacto!.correo
        txtNombre.text = contacto!.nombre
        txtCelular.text = contacto!.celular
    }
    @IBAction func DoTapGuardar(_ sender: Any) {
        contacto!.nombre = txtNombre.text!
        contacto!.celular = txtCelular.text!
        contacto!.correo = txtCorreo.text!
        callbackActualizarTVContactos!()
        
    }
    @IBAction func DoTapEliminar(_ sender: Any) {
        callbackEliminarContacto!(indice!)
        self.navigationController!.popViewController(animated: true)
    }
}
