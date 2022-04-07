//
//  Cuadrado.swift
//  Ejercicio3.4.2
//
//  Created by Karla Marquez on 4/5/22.
//

import Foundation

class Cuadrado:Figura{
    //propiedades del circulo para poder sacar su area, perimetro y volumen.
    //lado^2
    var lado:Double!

    var lado1:Double!
    var lado2:Double!
    var lado3:Double!
    var lado4:Double!
    //constructor
     required init(_ Lado:Double){
        self.lado=Lado;
    }
    required init(_ Lado1:Double){
        self.lado1 = Lado1
        self.lado2 = Lado1
        self.lado3 = Lado1
        self.lado4 = Lado1
    }
    //falta constructor para inicializar propiedades de volumen
    required init(){

    }

    //lado^2
     func calcularArea() -> Double {
        let calcularAreaCuadrado = pow(2,self.lado);
        return calcularAreaCuadrado;
    }
    //4*lado
    func calcularPerimetro() -> Double {
        let perimtro = self.lado1+self.lado2+self.lado3+self.lado4;
        return perimtro;

    }
    func calcularVolumen() -> Double {
        let calcularAreaCuadrado = pow(2,self.lado);
        return calcularAreaCuadrado;
    }
    
}
