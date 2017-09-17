//
//  ViewController.swift
//  Agrega números
//
//  Created by Pozo on 13-09-17.
//  Copyright © 2017 Pozo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultado: UILabel!
    //self.resultado.adjustsFontSizeToFitWidth = (self.resultado != nil)
    
    @IBAction func números(_ sender: UIButton) {
        
        resultado.text = resultado.text! + String(sender.tag-1)
    }
    
    @IBAction func botones(_ sender: UIButton)
    {
        if resultado.text != "" && sender.tag != 4 && sender.tag != 5 {
            
        }
        else if sender.tag == 4
        {
            resultado.text = ""
            
        }
        else if sender.tag == 5
        {
            return
            resultado.text = resultado.text! * String(9 * -1)
        }
    }
    
    override func becomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            let alertaDivisión = UIAlertController(title: nil, message: "Dividido por 0", preferredStyle:UIAlertControllerStyle.alert)
            alertaDivisión.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alertaDivisión, animated: true, completion: nil)
        }
            resultado.text = "Indeterminado"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultado.adjustsFontSizeToFitWidth = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

