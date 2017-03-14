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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

