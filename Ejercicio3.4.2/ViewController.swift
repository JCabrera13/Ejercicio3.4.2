//
//  ViewController.swift
//  Ejercicio3.4.2
//
//  Created by Karla Marquez on 4/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var txtBase: UITextField!
    @IBOutlet weak var txtAltura: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcularArea(_ sender: Any) {
     let miTriangulo = Triangulo(0,0)
    
        miTriangulo.altura = Double(txtAltura.text!)
        miTriangulo.base = Double (txtBase.text!)
     
        lblResultado.text = "El area es: \(miTriangulo.calcularArea())"

    }
    
}

