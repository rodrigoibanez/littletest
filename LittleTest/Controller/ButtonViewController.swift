//
//  ButtonViewController.swift
//  LittleTest
//
//  Created by Rodrigo Ibañez on 1/24/19.
//  Copyright © 2019. All rights reserved.
//

import UIKit

class ButtonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func okAction(_ sender: Any) {
        displayAlert(withTitle: "OK", style: .alert)
    }

    @IBAction func cancelAction(_ sender: Any) {
        displayAlert(withTitle: "CANCEL", style: .actionSheet)
    }

    func displayAlert(withTitle title: String, style: UIAlertController.Style) {
        let alert = UIAlertController(title: title, message: nil, preferredStyle: style)
        let action = UIAlertAction(title: "Aceptar", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

}
