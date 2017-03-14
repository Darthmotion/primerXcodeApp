//
//  ViewController.swift
//  aleApp1
//
//  Created by Gustavo on 3/13/17.
//  Copyright © 2017 Gustavo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func Click(_ sender: UIButton) {
        
        let controladorAlerta = UIAlertController(title: "Alerta", message: "Esto es Una Alerta", preferredStyle: .alert)
        
        let pulsadorOk = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        controladorAlerta.addAction(pulsadorOk)
        
        present(controladorAlerta, animated: true, completion: nil)
        
    }

    
    @IBAction func actionSheet(_ sender: UIButton) {
    
    
        let actionSheetController = UIAlertController(title: "Action Sheet", message: "Elija Una                                                                Opcion", preferredStyle: .actionSheet)
        
        let opcion1 = UIAlertAction(title: "Opcion 1", style: .default, handler: nil)
        
        let opcion2 = UIAlertAction(title: "Opcion 2", style: .default, handler: nil)
        
        let opcion3 = UIAlertAction(title: "Opcion 3", style: .default, handler: nil)
        
        let cancelar = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        
        actionSheetController.addAction(opcion1)
        actionSheetController.addAction(opcion2)
        actionSheetController.addAction(opcion3)
        actionSheetController.addAction(cancelar)
        
        present(actionSheetController, animated: true, completion: nil)
    
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

