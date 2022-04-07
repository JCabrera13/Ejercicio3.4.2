//
//  Trapecio.swift
//  Ejercicio3.4.2
//
//  Created by Karla Marquez on 4/5/22.
//

import Foundation
class Trapecio:Figura{    
    //propiedades del trapecio para poder sacar su area, perimetro y volumen.
    var baseMayor:Double!
    var baseMenor:Double!
    var altura:Double!
    
    //perimetro
    var lado1:Double!

    //volumen
    var largo:Double!
    
    //constructor area
    required init(BaseMayor:Double,BaseMenor:Double, Altura:Double) {
        self.baseMayor = BaseMayor;
        self.baseMenor = BaseMenor;
        self.altura=Altura;
    }

    required init(baseMayorPerimetro:Double, baseMenorPerimetro:Double,Lado1:Double){
        self.baseMayor = baseMayorPerimetro
        self.baseMenor = baseMenorPerimetro
        self.lado1 = Lado1
    }
    
    //constructor para volumen
    required init(BaseMayorV:Double,BaseMenorV:Double,AlturaV:Double,LargoV:Double) {
        self.baseMayor = BaseMayorV;
        self.baseMenor = BaseMenorV;
        self.altura = AlturaV;
        self.largo = LargoV
    }

    
    //(BaseMayor+BaseMenos/2) * altura

    func calcularArea() -> Double {
        let areaTrapecio = ((self.baseMayor + self.baseMenor)/2)*self.altura;
        return areaTrapecio;
    }
    //lado1+lado2+lado3+lado4
    func calcularPerimetro() -> Double {
        let perimetroTrapecio = (self.lado1 * 2) + self.baseMayor + self.baseMenor;
        return perimetroTrapecio;
        
    }
    func calcularVolumen() -> Double {
        let areatrapecio = ((self.baseMayor + self.baseMenor)/2)*self.altura;
        let volumen = areatrapecio * self.largo
        return volumen;
        
    }
    
}
