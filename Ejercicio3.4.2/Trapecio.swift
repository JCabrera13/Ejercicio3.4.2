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
    required init(_ BaseMayor:Double) {
        self.baseMayor = BaseMayor;
    }
    
    //(BaseMayor+BaseMenos/2) * altura

    func calcularArea() -> Double {
        let calcularAreaTrapecio = self.baseMayor + self.baseMenor;
        return calcularAreaTrapecio;
    }
    //lado1+lado2+lado3+lado4
    func calcularPerimetro() -> Double {
        let calcularAreaTrapecio = self.baseMayor + self.baseMenor;
        return calcularAreaTrapecio;
        
    }
    func calcularVolumen() -> Double {
        let calcularAreaTrapecio = self.baseMayor + self.baseMenor;
        return calcularAreaTrapecio;
        
    }
    
}
