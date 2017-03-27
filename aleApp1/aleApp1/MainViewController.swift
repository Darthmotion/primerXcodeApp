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
    @IBOutlet weak var changingLabel: UILabel!
    
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
        
        changingLabel.text = modalTestButton.currentTitle
        
    }

    @IBAction func didTapButton2(_ sender: UIButton) {
        let controladorAlerta = UIAlertController(title: "Alerta", message: "Esto es mensaje en la alerta", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        controladorAlerta.addAction(okAction)
        present(controladorAlerta, animated: true, completion: nil)
        
        changingLabel.text = alertTestButton.currentTitle
    }
    
    @IBAction func didTapButton3(_ sender: UIButton) {
        //Demasiados enters usas. Todos los _let_ podes agruparlos, total son bindings.
        let actionSheet = UIAlertController(title: "Action Sheet", message: "Elija Una Opcion", preferredStyle: .actionSheet)
        let option0Title = "Gato"
        let option1Title = "Perro"
        let option2Title = "Apache Attack Helicopter"
        let cancelTitle = "Cancelar"
        
        //Zero-indexed SIEMPRE, excepto que la experiencia de usuario lo reclame.
        //Igual bien acomodando las opciones en el orden que se presentan en UI.
        let option0 = UIAlertAction(title: option0Title, style: .default) {action in self.changingLabel.text = option0Title}
        let option1 = UIAlertAction(title: option1Title, style: .default) {action in self.changingLabel.text = option1Title}
        let option2 = UIAlertAction(title: option2Title, style: .default) {action in self.changingLabel.text = option2Title}
        let cancelAction = UIAlertAction(title: cancelTitle, style: .cancel) {action in self.changingLabel.text = cancelTitle}
        
        actionSheet.addAction(option0)
        actionSheet.addAction(option1)
        actionSheet.addAction(option2)
        actionSheet.addAction(cancelAction)
        
        present(actionSheet, animated: true, completion: nil)
        
        changingLabel.text = actionSheetTestButton.currentTitle
    }
}

