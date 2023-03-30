//
//  SonucVC.swift
//  SayiTahminEt
//
//  Created by Eyüphan Akkaya on 30.03.2023.
//

import UIKit

class SonucVC: UIViewController {
    
    var sonuc = Bool()
    @IBOutlet weak var sonucImageView: UIImageView!
    
    @IBOutlet weak var sonucLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(sonuc)
        if sonuc == true {
            sonucImageView.image = UIImage(named: "mutlu")
            sonucLabel.text = "KAZANDINIZ."
        }
        else {
            sonucImageView.image = UIImage(named: "uzgun")
            sonucLabel.text = "KAYBETTİNİZ"
        }
        
    }
   

    @IBAction func sonucButonTiklandi(_ sender: Any) {
        
        navigationController?.popToRootViewController(animated: true)
    }
    
}
