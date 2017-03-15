//
//  MainViewController.swift
//  aleApp1
//
//  Created by Gustavo on 3/13/17.
//  Copyright © 2017 Gustavo. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var modalTestButton: UIButton!
    @IBOutlet weak var alertTestButton: UIButton!
    @IBOutlet weak var actionSheetTestButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        modalTestButton.setTitle("Modal Test", for: .normal)
        alertTestButton.setTitle("Alert Test", for: .normal)
        actionSheetTestButton.setTitle("ActionSheet Test", for: .normal)
    }
    
    //Como regla general, nunca dejes logica de flujo en los storyboard, sobre todo porque es casi seguro que eventualmente vas a tener logica de navegacion en el codigo, asique es mejor tenerlo _todo_ del lado del codigo en vez de X partes de la navegacion aca, y otra Y cantidad de cosas en los .storyboard.
    @IBAction func didTapButton1(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "modalViewController") as! ModalViewController
        present(vc, animated: true)
    }

    @IBAction func didTapButton2(_ sender: UIButton) {
        let controladorAlerta = UIAlertController(title: "Alerta", message: "Esto es mensaje en la alerta", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        controladorAlerta.addAction(okAction)
        present(controladorAlerta, animated: true, completion: nil)
    }
    
    @IBAction func didTapButton3(_ sender: UIButton) {
        //Demasiados enters usas. Todos los _let_ podes agruparlos, total son bindings.
        let actionSheet = UIAlertController(title: "Action Sheet", message: "Elija Una                                                                Opcion", preferredStyle: .actionSheet)
        
        //Zero-indexed SIEMPRE, excepto que la experiencia de usuario lo reclame.
        //Igual bien acomodando las opciones en el orden que se presentan en UI.
        let option0 = UIAlertAction(title: "Gato", style: .default, handler: nil)
        let option1 = UIAlertAction(title: "Perro", style: .default, handler: nil)
        let option2 = UIAlertAction(title: "Apache Attack Helicopter", style: .default, handler: nil)
        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        
        actionSheet.addAction(option0)
        actionSheet.addAction(option1)
        actionSheet.addAction(option2)
        actionSheet.addAction(cancelAction)
        
        present(actionSheet, animated: true, completion: nil)
    }
}

