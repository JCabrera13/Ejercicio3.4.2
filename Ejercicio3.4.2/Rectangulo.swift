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
    var alturaVolumen:Double!
    //constructor para inicializar propiedades para calcular el area
       required init(Base:Double,Altura:Double){
        self.altura = Altura;
        self.base = Base;
    }
    //constructor para inicializar propiedades para calcular el perimetro.
    required init (BasePerimetro:Double, AlturaPerimetro:Double){
        self.altura=AlturaPerimetro
        self.base=BasePerimetro
    }
    //constructor para inicializar propiedades para calcular el volumen
    required init(_ baseVolumen:Double, _ alturaVolumen:Double, _ alturaVolumenRectangulo:Double){
        self.base = baseVolumen;
        self.altura = alturaVolumen;
        self.alturaVolumen = alturaVolumenRectangulo
    }    
    func calcularArea() -> Double {
    let calcularAreaRectangulo = self.base * self.altura
        return calcularAreaRectangulo;
    }
    func calcularPerimetro() -> Double {
        let perimetro = (2 * self.base) + (self.altura * 2)
            return perimetro;
    }
    func calcularVolumen() -> Double {
    let baseRectangulo = self.base * self.altura
    let volumenRectangulo = baseRectangulo * self.alturaVolumen
        return volumenRectangulo;
    }
    
}
