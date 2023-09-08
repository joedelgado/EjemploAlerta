//
//  ViewController.swift
//  EjemploAlerta
//
//  Created by JOEL DELGADO on 26/04/23.
//

import UIKit

class MainViewController: UIViewController {

 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // creando el segundo commit
    }

    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func onAccionTapped() {
        /******************************************************************/
        let alert = UIAlertController(title: "Titulo de la Alerta", message: "Cuerpo de la alerta", preferredStyle: .actionSheet)
        /******************************************************************/
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.showResultMessage(message: "Accion ok Presionada")
        }
        alert.addAction(okAction)
        /******************************************************************/
        let destructiveAction = UIAlertAction(title: "DESTRUIR", style: .destructive) { _ in
                       
            self.showResultMessage(message: "Accion destruir Presionada")
        }
        alert.addAction(destructiveAction)
        /******************************************************************/
        let cancelAction = UIAlertAction(title: "CANCELAR", style: .cancel){ _ in
            self.showResultMessage(message: "Accion Cancelar Presionada")
        }
        alert.addAction(cancelAction)
        /******************************************************************/
        present(alert, animated: true)
    }
    func showResultMessage(message: String) {
        resultLabel.text = message
        resultLabel.isHidden = false
    }
}

