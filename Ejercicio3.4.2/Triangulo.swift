//
//  Triangulo.swift
//  Ejercicio3.4.2
//
//  Created by Karla Marquez on 4/5/22.
//

import Foundation

public class Triangulo:Figura{
    //propiedades del circulo para poder sacar su area, perimetro y volumen.
    //base x altura / 2
    var base:Double!
    var altura:Double!
    
    //propiedades perimetro.
    var lado1:Double!
    var lado2:Double!
    var lado3:Double!
    
    //constructor
    public override init(){
        super.init()
    }
    //base x altura /2
    public override func calcularArea() -> Double {
        <#code#>
    }
    //lado1+lado2+lado3
    public override func calcularPerimetro() -> Double {
        <#code#>
    }
    public override func calcularVolumen() -> Double {
        <#code#>
    }
    
}
