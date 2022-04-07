//
//  Trapecio.swift
//  Ejercicio3.4.2
//
//  Created by Karla Marquez on 4/5/22.
//

import Foundation
class Trapecio:Figura{
    required init() {
    
    }
    
    //propiedades del trapecio para poder sacar su area, perimetro y volumen.
    var baseMayor:Double!
    var baseMenor:Double!
    var altura:Double!
    
    //perimetro
    var lado1:Double!
    var lado2:Double!
    var lado3:Double!
    var lado4:Double!
    
    //constructor
    required init(_ BaseMayor:Double,_ BaseMenor:Double, _ Altura:Double) {
        self.baseMayor = BaseMayor;
        self.baseMenor = BaseMenor;
        self.altura=Altura;
    }

    required init(_ Lado1:Double,_ Lado2:Double,_ Lado3:Double,_ Lado4:Double ){
        self.lado1 = Lado1
        self.lado2 = Lado2
        self.lado3 = Lado3
        self.lado4 = Lado4
    }
    //falta constructor para volumne
    required init(){
        
    }
    
    //(BaseMayor+BaseMenos/2) * altura

    func calcularArea() -> Double {
        let areaTrapecio = ((self.baseMayor + self.baseMenor)/2)*self.altura;
        return areaTrapecio;
    }
    //lado1+lado2+lado3+lado4
    func calcularPerimetro() -> Double {
        let perimetroTrapecio = self.lado1 + self.lado2 +self.lado3 +self.lado4;
        return perimetroTrapecio;
        
    }
    func calcularVolumen() -> Double {
        let calcularAreaTrapecio = self.baseMayor + self.baseMenor;
        return calcularAreaTrapecio;
        
    }
    
}
