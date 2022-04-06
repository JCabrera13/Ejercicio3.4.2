//
//  Trapecio.swift
//  Ejercicio3.4.2
//
//  Created by Karla Marquez on 4/5/22.
//

import Foundation
public class Trapecio:Figura{
    //propiedades del trapecio para poder sacar su area, perimetro y volumen.
    var baseMayor:Double!
    var baseMenor:Double!
    var altura:Double!
    
    //perimetro
    var lado1:Double!
    var lado2:Double!
    var lado3:Double!
    var lado4:Double
    
    //constructor
    public override init(){
        super.init()
    }
    //(BaseMayor+BaseMenos/2) * altura

    public override func calcularArea() -> Double {
        <#code#>
    }
    //lado1+lado2+lado3+lado4
    public override func calcularPerimetro() -> Double {
        <#code#>
    }
    public override func calcularVolumen() -> Double {
        <#code#>
    }
    
}
