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
    
    //constructor
     required init(){
        
    }
    //lado^2
     func calcularArea() -> Double {
        let calcularAreaCuadrado = pow(2,self.lado);
        return calcularAreaCuadrado;
    }
    //4*lado
    func calcularPerimetro() -> Double {
        let calcularAreaCuadrado = pow(2,self.lado);
        return calcularAreaCuadrado;

    }
    func calcularVolumen() -> Double {
        let calcularAreaCuadrado = pow(2,self.lado);
        return calcularAreaCuadrado;
    }
    
}
