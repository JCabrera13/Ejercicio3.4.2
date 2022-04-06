//
//  Circulo.swift
//  Ejercicio3.4.2
//
//  Created by Karla Marquez on 4/5/22.
//

import Foundation

 class Circulo:Figura{
    //propiedades del circulo para poder sacar su area, perimetro y volumen.
    //pi, radio
    //formula:pi*radio(^2)
    var radio:Double!
    var pi:Double!
    
    var dblPi: Double {
        get {
            return (3.14)
        }
    }
    
    //constructor para calcular el area
     required init(_ Pi:Double, _ Radio:Double){
        self.radio = Radio ;
        self.pi = dblPi;
    }
     //constructor para calcular el perimetro
     required init (_ Radio:Double){
         self.radio = Radio
     }
     
     //constructor para calcular el volumne
     required init()
     {
         
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
    func calcularArea() -> Double {
        let calcularAreaCirculo = self.pi*pow(2.0,self.dblPi);
        return calcularAreaCirculo;
    }
    //2Pi*radio
    func calcularPerimetro() -> Double {
        let perimetro = (2*self.dblPi)*self.radio
        return perimetro;
    }
    //
    func calcularVolumen() -> Double {
        let perimetro = (2*self.dblPi)*self.radio
        return perimetro;
    }
    
}
