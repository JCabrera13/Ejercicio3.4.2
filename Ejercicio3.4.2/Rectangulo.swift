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
    

    //constructor para inicializar propiedades para calcular el area
       required init(_ Base:Double, _ Altura:Double){
        self.altura = Altura;
        self.base = Base;
    }
    //constructor para inicializar propiedades para calcular el perimetro.
    required init (_ Base:Double, _Altura:Double){
        self.altura=Altura
        self.base=Base
    }
    

    func calcularArea() -> Double {
    let calcularAreaRectangulo = self.base * self.altura
        return calcularAreaRectangulo;
    }
    func calcularPerimetro() -> Double {
        let perimetro = (2*self.base) + (self.altura*2)
            return perimetro;
    }
    func calcularVolumen() -> Double {
    let calcularAreaRectangulo = self.base * self.altura
        return calcularAreaRectangulo;
    }
    
}
