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
    var alturaVolumen:Double!
    //constructor perimetro
    required init(ladoPerimetro:Double){
        self.lado=ladoPerimetro;
    }
    //constructor area
    required init(ladoArea:Double){
        self.lado = ladoArea
    }
    //falta constructor para inicializar propiedades de volumen
    required init(_ ladoVolumen:Double, _ AlturaVolumen:Double){
        self.lado = ladoVolumen
        self.alturaVolumen = AlturaVolumen
    }
    //lado^2
     func calcularArea() -> Double {
        let calcularAreaCuadrado = pow(self.lado,2);
        return calcularAreaCuadrado;
    }
    //4*lado
    func calcularPerimetro() -> Double {
        let perimtro = 4 * self.lado
        return perimtro;
    }
    func calcularVolumen() -> Double {
        let baseVolumenCuadrado = pow(self.lado,2)
        let volumenCuadrado = self.alturaVolumen * baseVolumenCuadrado
        return volumenCuadrado;
    }
}
