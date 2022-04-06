//
//  Rectangulo.swift
//  Ejercicio3.4.2
//
//  Created by Karla Marquez on 4/5/22.
//

import Foundation

class Rectangulo:Figura{
    //propiedades del circulo para poder sacar su area, perimetro y volumen.
    //base y altura
    //formula: base * altura
    var base:Double!
    var altura:Double!
    
    //constructor
    required init(){
        
    }
    
    func calcularArea() -> Double {
    let calcularAreaRectangulo = self.base * self.altura
        return calcularAreaRectangulo;
    }
    func calcularPerimetro() -> Double {
        let calcularAreaRectangulo = self.base * self.altura
            return calcularAreaRectangulo;
    }
    func calcularVolumen() -> Double {
    let calcularAreaRectangulo = self.base * self.altura
        return calcularAreaRectangulo;
    }
    
}
