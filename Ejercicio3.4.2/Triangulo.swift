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
    //propiedades volumen
    var alturaVolumen:Double!
    //constructor para inicializar propiedades para el area
    required init(baseArea:Double,alturaArea:Double){
        self.altura = alturaArea;
        self.base = baseArea;
    }
    //constructor para inicializar propiedades para el perimetro
    required init(basePerimetro:Double, lado1Perimetro:Double,lado2Perimetro:Double){
        self.base = basePerimetro
        self.lado1 = lado1Perimetro
        self.lado2 = lado2Perimetro
    }
    //volumen.
      init(base: Double, alturaVolumenTriangulo: Double, alturaVolumen: Double) {
        self.base = base
        self.altura = alturaVolumenTriangulo
        self.alturaVolumen = alturaVolumen
    }
    //base x altura /2
    func calcularArea() -> Double {
        let resultadoArea = (self.base * self.altura)/2
        return resultadoArea;
    }
    //lado1+lado2+lado3
    func calcularPerimetro() -> Double {
        let resultadoPerimetro = self.lado1 + self.lado2 + self.base;
        return resultadoPerimetro;
    }
    func calcularVolumen() -> Double {
        let baseTriangulo = (self.base * self.altura)/2
        let volumen = baseTriangulo * alturaVolumen
        return volumen;
    }
}
