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
    
    //constructor para inicializar propiedades para el area
    required init(_ Base:Double, _ Altura:Double){
        self.altura = Altura;
        self.base = Base;
    }
    //constructor para inicializar propiedades para el perimetro
    required init(_ Lado1:Double, _ Lado2:Double, _ Lado3:Double){
        self.lado1 = Lado1
        self.lado2 = Lado2
        self.lado3 = Lado3
    }
    //volumne dejar pendiente.
    required init(){
        
    }
    //base x altura /2
    func calcularArea() -> Double {
        let resultadoArea = (self.base * self.altura)/2
        return resultadoArea;
    }
    //lado1+lado2+lado3
    func calcularPerimetro() -> Double {
        let resultadoPerimetro = self.lado1 + self.lado2 + self.lado3;
        return resultadoPerimetro;
    }
    func calcularVolumen() -> Double {
        let resultadoPerimetro = self.lado1 + self.lado2 + self.lado3;
        return resultadoPerimetro;
    }
    
}
