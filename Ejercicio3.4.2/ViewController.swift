//
//  ViewController.swift
//  Ejercicio3.4.2
//
//  Created by Karla Marquez on 4/5/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pkvFiguras: UIPickerView!
    let figuras = ["Circulo","Cuadrado", "Rectangulo",
             "Trapecio", "Triangulo" ]

    
    
    /* UILabel para mostrar datos de entrada y salida*/
    @IBOutlet weak var entradaValores: UILabel!
    @IBOutlet weak var lblResultadoAPV: UILabel!
    
    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var txtBase: UITextField!
    @IBOutlet weak var txtAltura: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pkvFiguras.delegate = self
        pkvFiguras.dataSource = self
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return figuras.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return figuras[row]
    }
    
    
    
    
    @IBAction func calcularArea(_ sender: Any) {
        let miTriangulo = Triangulo(baseArea: 0.0, alturaArea: 0.0)
    
        miTriangulo.altura = Double(txtAltura.text!)
        miTriangulo.base = Double (txtBase.text!)
     
        lblResultado.text = "El area es: \(miTriangulo.calcularArea())"

    }
    
    
    @IBAction func barBtnCalcularArea(_ sender: UIBarButtonItem) {
        let figuraSeleccionada =  "\(figuras[pkvFiguras.selectedRow(inComponent: 0)])"
        let alerta = UIAlertController(title: "Area", message: "Formulario de datos", preferredStyle: .alert)
        
        switch figuraSeleccionada{
        case "Circulo":
            alerta.addTextField{
                (txtRadio) in txtRadio.placeholder = "Radio"
            }
        case "Triangulo":
            alerta.addTextField{
                (txtLadoA) in txtLadoA.placeholder = "Base"
            }
            alerta.addTextField{
                (txtLadoB) in
                txtLadoB.placeholder = "Altura"
            }
        case "Cuadrado":
            alerta.addTextField{
                (txtLado) in txtLado.placeholder = "Lado"
            }
        case "Rectangulo":
            alerta.addTextField{
                (txtBase) in
                txtBase.placeholder = "Base"
            }
            alerta.addTextField{
                (txtAltura) in txtAltura.placeholder = "Altura"
            }
        case "Trapecio":
            alerta.addTextField{
                (txtBaseMayor) in txtBaseMayor.placeholder = "Base mayor"
            }
            alerta.addTextField{
                (txtBaseMenor) in txtBaseMenor.placeholder = "Base menor"
            }
            alerta.addTextField{
                (txtAltura) in txtAltura.placeholder = "Altura"
            }
        default:
            self.lblResultado.text = "Figura no configurada"
        }
        let btnCancelar = UIAlertAction(title: "Cancelar", style: .cancel)
        let btnCalcular = UIAlertAction(title: "Calcular", style: .default, handler: {
            _ in
            switch figuraSeleccionada{
            case "Circulo":
                let radio = Double (alerta.textFields![0].text!)
                let miCirculo = Circulo(RadioArea: radio!)
                self.entradaValores.text = "Radio: \(miCirculo.radio!)"
                self.lblResultadoAPV.text = "Area:  \(miCirculo.calcularArea())"
            case "Triangulo":
                let base = Double (alerta.textFields![0].text!)
                let altura = Double(alerta.textFields![1].text!)
                let triangulo = Triangulo(baseArea: base!, alturaArea: altura!)
                self.entradaValores.text = "Base: \(triangulo.base!), Altura: \(triangulo.altura!)"
                self.lblResultadoAPV.text = "Perimetro \(triangulo.calcularArea())"
            case "Cuadrado":
                let lado = Double (alerta.textFields![0].text!)
                let cuadrado = Cuadrado(ladoArea: lado!)
                self.entradaValores.text = "Lado: \(cuadrado.lado!)"
                self.lblResultadoAPV.text = "Area \(cuadrado.calcularArea())"
            case "Rectangulo":
                let base = Double (alerta.textFields![0].text!)
                let altura = Double(alerta.textFields![1].text!)
                let rectangulo = Rectangulo(Base: base!, Altura: altura!)
                self.entradaValores.text = "Base: \(rectangulo.base!), Altura: \(rectangulo.altura!)"
                self.lblResultadoAPV.text = "Area: \(rectangulo.calcularArea())"
            case "Trapecio":
                let baseMayor = Double (alerta.textFields![0].text!)
                let baseMenor = Double(alerta.textFields![1].text!)
                let altura = Double(alerta.textFields![2].text!)
                
                let trapecio = Trapecio(BaseMayor: baseMayor!, BaseMenor: baseMenor!, Altura: altura!)
                self.entradaValores.text = "Base Mayor: \(trapecio.baseMayor!), Base Menor: \(trapecio.baseMenor!), Altura: \(trapecio.altura!)"
                self.lblResultadoAPV.text = "Area \(trapecio.calcularArea())"
            default:
                self.lblResultadoAPV.text = "Error al calcular el area"
            }
        })
        alerta.addAction(btnCancelar)
        alerta.addAction(btnCalcular)
        self.present(alerta, animated: true, completion: nil)
    }
    
    @IBAction func barBtnCalcularPerimetro(_ sender: UIBarButtonItem) {
        let figuraSeleccionada =  "\(figuras[pkvFiguras.selectedRow(inComponent: 0)])"
        let alerta = UIAlertController(title: "Perimetro", message: "Ingrese los datos", preferredStyle: .alert)
        
        switch figuraSeleccionada{
        case "Circulo":
            alerta.addTextField{
                (txtRadio) in txtRadio.placeholder = "Radio"
            }
        case "Triangulo":
            alerta.addTextField{
                (txtBase) in txtBase.placeholder = "Base"
            }
            alerta.addTextField{
                (txtLadoA) in txtLadoA.placeholder = "Lado A"
            }
            alerta.addTextField{
                (txtLadoB) in
                txtLadoB.placeholder = "Lado B"
            }
        case "Cuadrado":
            alerta.addTextField{
                (txtLado) in txtLado.placeholder = "Lado"
            }
        case "Rectangulo":
            alerta.addTextField{
                (txtBase) in
                txtBase.placeholder = "Base"
            }
            alerta.addTextField{
                (txtAltura) in txtAltura.placeholder = "Altura"
            }
        case "Trapecio":
            alerta.addTextField{
                (txtBaseMayor) in txtBaseMayor.placeholder = "Base mayor"
            }
            alerta.addTextField{
                (txtBaseMenor) in txtBaseMenor.placeholder = "Base menor"
            }
            alerta.addTextField{
                (txtLado) in txtLado.placeholder = "Lados"
            }
        default:
            self.lblResultado.text = "Figura invalida"
        }
        let btnCancelar = UIAlertAction(title: "Cancelar", style: .cancel)
        let btnCalcular = UIAlertAction(title: "Calcular", style: .default, handler: {
            _ in
            switch figuraSeleccionada{
            case "Circulo":
                let radio = Double (alerta.textFields![0].text!)
                let circulo = Circulo(radioPerimetro: radio!)
                self.entradaValores.text = "Radio: \(circulo.radio!)"
                self.lblResultadoAPV.text = "Perimetro \(circulo.calcularPerimetro())"
            case "Triangulo":
                let base = Double(alerta.textFields![0].text!)
                let ladoA = Double (alerta.textFields![2].text!)
                let ladoB = Double(alerta.textFields![2].text!)
                let triangulo = Triangulo(basePerimetro:base!, lado1Perimetro: ladoA!, lado2Perimetro: ladoB!)
                self.entradaValores.text = "Lado A: \(triangulo.lado1!), Lado B: \(triangulo.lado2!), Base: \(triangulo.base!)"
                self.lblResultadoAPV.text = "Perimetro \(triangulo.calcularPerimetro())"
            case "Cuadrado":
                let lado = Double (alerta.textFields![0].text!)
                let cuadrado = Cuadrado(ladoPerimetro: lado!)
                self.entradaValores.text = "Lado: \(cuadrado.lado!)"
                self.lblResultadoAPV.text = "Perimetro \(cuadrado.calcularPerimetro())"
            case "Rectangulo":
                let base = Double (alerta.textFields![0].text!)
                let altura = Double(alerta.textFields![1].text!)
                let rectangulo = Rectangulo(BasePerimetro: base!, AlturaPerimetro: altura!)
                self.entradaValores.text = "Base: \(rectangulo.base!), Altura: \(rectangulo.altura!)"
                self.lblResultadoAPV.text = "Perimetro \(rectangulo.calcularPerimetro())"
            case "Trapecio":
                let baseMayor = Double (alerta.textFields![0].text!)
                let baseMenor = Double(alerta.textFields![1].text!)
                let lados = Double(alerta.textFields![2].text!)
                let trapecio = Trapecio(baseMayorPerimetro: baseMayor!, baseMenorPerimetro: baseMenor!, Lado1: lados!)
                self.entradaValores.text = "Lados: \(trapecio.lado1!), \nBase Mayor: \(trapecio.baseMayor!), \nBase Menor: \(trapecio.baseMenor!)"
                self.lblResultadoAPV.text = "Perimetro: \(trapecio.calcularPerimetro())"
            default:
                self.lblResultado.text = "Error al calcular el perimetro"
            }
        })
        alerta.addAction(btnCancelar)
        alerta.addAction(btnCalcular)
        self.present(alerta, animated: true, completion: nil)
    }
    
    
    @IBAction func batBtnCalcularVolumen(_ sender: UIBarButtonItem) {
        let figuraSeleccionada =  "\(figuras[pkvFiguras.selectedRow(inComponent: 0)])"
        let alerta = UIAlertController(title: "Volumen", message: "Ingrese los datos", preferredStyle: .alert)
        
        switch figuraSeleccionada{
        case "Circulo":
            alerta.addTextField{
                (txtRadio) in txtRadio.placeholder = "Radio"
            }
            alerta.addTextField{
                (txtAltura) in txtAltura.placeholder = "Altura"
            }
        case "Triangulo":
            alerta.addTextField{
                (txtBase) in txtBase.placeholder = "Base"
            }
            alerta.addTextField{
                (txtAltura) in txtAltura.placeholder = "Altura"
            }
            alerta.addTextField{
                (txtAlturaV) in
                txtAlturaV.placeholder = "Altura Volumen"
            }
        case "Cuadrado":
            alerta.addTextField{
                (txtLado) in txtLado.placeholder = "Lado"
            }
            alerta.addTextField{
                (txtAlturaV) in
                txtAlturaV.placeholder = "Altura Volumen"
            }
        case "Rectangulo":
            alerta.addTextField{
                (txtBase) in
                txtBase.placeholder = "Base"
            }
            alerta.addTextField{
                (txtAltura) in txtAltura.placeholder = "Altura"
            }
            alerta.addTextField{
                (txtAlturaV) in
                txtAlturaV.placeholder = "Altura Volumen"
            }
        case "Trapecio":
            alerta.addTextField{
                (txtBaseMayor) in txtBaseMayor.placeholder = "Base mayor"
            }
            alerta.addTextField{
                (txtBaseMenor) in txtBaseMenor.placeholder = "Base menor"
            }
            alerta.addTextField{
                (txtAlturaV) in
                txtAlturaV.placeholder = "Altura volumen"
            }
            alerta.addTextField{
                (txtLargo) in
                txtLargo.placeholder = "Largo Volumen"
            }
        default:
            self.lblResultado.text = "Figura invalida"
        }
        let btnCancelar = UIAlertAction(title: "Cancelar", style: .cancel)
        let btnCalcular = UIAlertAction(title: "Calcular", style: .default, handler: {
            _ in
            switch figuraSeleccionada{
            case "Circulo":
                let radio = Double (alerta.textFields![0].text!)
                let altura = Double (alerta.textFields![1].text!)
                let circulo = Circulo(RadioVolumen: radio!, Altura: altura!)
                self.entradaValores.text = "Radio: \(circulo.radio!)"
                self.lblResultadoAPV.text = "Volumen \(circulo.calcularVolumen())"
            case "Triangulo":
                let base = Double(alerta.textFields![0].text!)
                let altura = Double (alerta.textFields![1].text!)
                let alturaV = Double(alerta.textFields![2].text!)
                let triangulo = Triangulo(base: base!, alturaVolumenTriangulo: altura!, alturaVolumen: alturaV!)
                self.entradaValores.text = "Base \(triangulo.base!), altura: \(triangulo.altura!), altura volumen: \(triangulo.alturaVolumen!)"
                self.lblResultadoAPV.text = "Volumen \(triangulo.calcularVolumen())"
            case "Cuadrado":
                let lado = Double (alerta.textFields![0].text!)
                let altura = Double (alerta.textFields![1].text!)
                let cuadrado = Cuadrado(ladoVolumen: lado!, AlturaVolumen: altura!)
                self.entradaValores.text = "Lado: \(cuadrado.lado!), Altura Volumen: \(cuadrado.alturaVolumen!)"
                self.lblResultadoAPV.text = "Volumen \(cuadrado.calcularVolumen())"
            case "Rectangulo":
                let base = Double (alerta.textFields![0].text!)
                let altura = Double(alerta.textFields![1].text!)
                let alturaV = Double(alerta.textFields![2].text!)
                let rectangulo = Rectangulo(baseVolumen: base!, alturaVolumen: altura!, alturaVolumenRectangulo: alturaV!)
                self.entradaValores.text = "Base: \(rectangulo.base!), Altura: \(rectangulo.altura!), Altura Volumen: \(rectangulo.alturaVolumen!)"
                self.lblResultadoAPV.text = "Volumen: \(rectangulo.calcularVolumen())"
            case "Trapecio":
                let baseMayor = Double (alerta.textFields![0].text!)
                let baseMenor = Double(alerta.textFields![1].text!)
                let alturaV = Double(alerta.textFields![2].text!)
                let largoV = Double(alerta.textFields![3].text!)
                let trapecio = Trapecio(BaseMayorV: baseMayor!, BaseMenorV: baseMenor!, AlturaV: alturaV!, LargoV: largoV!)
                self.entradaValores.text = "Base mayor: \(trapecio.baseMayor!),\nBase menor: \(trapecio.baseMenor!),\naltura: \(trapecio.altura!), \nlargo: \(trapecio.largo!)"
                self.lblResultadoAPV.text = "Volumen: \(trapecio.calcularVolumen())"
            default:
                self.lblResultado.text = "Error al calcular el perimetro"
            }
        })
        alerta.addAction(btnCancelar)
        alerta.addAction(btnCalcular)
        self.present(alerta, animated: true, completion: nil)
    }
}

