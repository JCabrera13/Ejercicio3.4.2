//
//  Circulo.swift
//  Ejercicio3.4.2
//
//  Created by Karla Marquez on 4/5/22.
//

import Foundation

public class Circulo:Figura{
    //propiedades del circulo para poder sacar su area, perimetro y volumen.
    //pi, radio
    //formula:pi*radio(^2)
    var radio:Double!
    var pi:Double!
    
    var dblRadio:Double{
        get{return dblRadio}
    }
    
    var dblPi: Double {
        get {
            return (3.14)
        }
    }
    
    //constructor para calcular el area
    override init(){
        self.radio = dblRadio;
        self.pi = dblPi;
    }
    
    
    //constructor para inicializar propiedades para calcular el perimetro.
    
    /* override init(_ Radio:Double, _ Pi:Double){
        self.radio=Radio
        self.pi=Pi
    } */
    //constructor para inicializar las propiedades para calcular el volumen.
    /* override init(){
        self.radio = dblRadio;
        self.pi = dblPi;
    } */
    //metodos sobreescritos provenientes de Figura.
    //pi*radio^2
    public override func calcularArea() -> Double {
        
    }
    //2Pi*radio
    public override func calcularPerimetro() -> Double {
        <#code#>
    }
    //
    public override func calcularVolumen() -> Double {
        <#code#>
    }
    
}
