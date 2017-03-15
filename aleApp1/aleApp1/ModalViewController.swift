//
//  ModalViewController.swift
//  aleApp1
//
//  Created by Alejandro Ravasio on 3/14/17.
//  Copyright © 2017 Gustavo. All rights reserved.
//

import Foundation
import UIKit

class ModalViewController: UIViewController {
    
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backButton.titleLabel?.text = "Tu vieja"
        
    }
    
    @IBAction func didTapBackButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
