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
    var altura:Double!   
    //constructor para calcular el perimetro
     required init(_ radioPerimetro:Double){
        self.radio = radioPerimetro ;
    }
     //constructor para calcular el Area
     required init (_ RadioArea:Double){
         self.radio = RadioArea
     }
     //constructor para calcular el volumne
     required init(_ RadioVolumen:Double, _ Altura:Double)
     {
         self.radio= RadioVolumen
         self.altur=Altura
    }
      //2Pi*radio
    func calcularPerimetro() -> Double {
        let perimetro = (2*Double.pi)*self.radio
        return perimetro;
    }
    //pi*radio^2
    func calcularArea() -> Double {
        let calcularAreaCirculo = Double.pi * pow(self.radio,2);
        return calcularAreaCirculo;
    }
    //pi * radio^2 * altura 
    func calcularVolumen() -> Double {
        let volumen = Double.pi * pow(self.radio,2) * self.altura
        return perimetro;
    }
}
