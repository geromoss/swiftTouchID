//
//  ViewController.swift
//  ejemploTouchId
//
//  Created by Gerardo Lupa on 5/28/19.
//  Copyright © 2019 Gerardo Lupa. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func touchID(_ sender: Any) {
        
        let context: LAContext = LAContext()
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil){
            context.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Tienes que usar tu huella para acceder") { (wasCorrect, error) in
                if wasCorrect{
                    print("bien! touchId correcto")
                }else{
                    print("mal! el touchId la huella no es la correcta")
                }
            }
        }else{
            //hacer una alerta que se necesita configurar el touch ID
        }
        
    }
    
}

