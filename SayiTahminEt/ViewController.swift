//
//  ViewController.swift
//  SayiTahminEt
//
//  Created by Eyüphan Akkaya on 30.03.2023.
//

import UIKit

class ViewController: UIViewController {
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func oyunBaslaTiklandi(_ sender: Any) {
        performSegue(withIdentifier: "toTahminVC", sender: nil)
    }
    
}

