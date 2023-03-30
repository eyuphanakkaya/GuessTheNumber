//
//  TahminEtVC.swift
//  SayiTahminEt
//
//  Created by Eyüphan Akkaya on 30.03.2023.
//

import UIKit

class TahminEtVC: UIViewController {

    @IBOutlet weak var tahminDurumLabel: UILabel!
    
    @IBOutlet weak var tahminAciklamaLabel: UILabel!
    
    @IBOutlet weak var tahminGirisTextField: UITextField!
    
    
    var sayac = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tahminAciklamaLabel.isHidden = true
        tahminDurumLabel.text = String("Kalan Hak : \(sayac)")
        self.navigationItem.hidesBackButton = true
        print("Rastgele Sayı : \(rastgeleSayi)")
        // Do any additional setup after loading the view.
    }
    let rastgeleSayi = Int(arc4random_uniform(101))//50

   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if let gelenVeri = sender as? Bool {
           if segue.identifier == "toSonucVC" {
               let destinationVC = segue.destination as? SonucVC
               destinationVC?.sonuc = gelenVeri
               
           }
       }

    
}
    


    @IBAction func tahminEtTiklandi(_ sender: Any) {
        let girilenSayi = Int(tahminGirisTextField.text!)//45-
        tahminAciklamaLabel.isHidden = false
        sayac = sayac - 1
        tahminDurumLabel.text = String("Kalan Hak : \(sayac)")
        if girilenSayi! > rastgeleSayi {
            tahminAciklamaLabel.text = "Azalt"
        }
        else if girilenSayi! < rastgeleSayi {
            tahminAciklamaLabel.text = "Arttır"

        }
        else if girilenSayi == rastgeleSayi {
            let sonuc = true
            performSegue(withIdentifier: "toSonucVC", sender: sonuc)
            return
            
        }
        if sayac == 0 {
            let sonuc = false
            performSegue(withIdentifier: "toSonucVC", sender: sonuc)
        
    }

    }
    
}
