import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPIckerViewDataSource{

        let figuras = ["Circulo","Cuadrado", "Rectangulo",
         "Trapecio", "Triangulo" ] 

      //Numero de componentes, los componentes seran las columnas
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //aqui se prepara para regresar cuantos va a tener
        return 1
    }
    //configurar cuantos renglones tiene cada columna
    func pickerView (_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //se ejecuta por cada vez que haga el numberOfComponent, el parametro va a ir de n - 1
        //y no controlo el ciclo, se controla de manera interna. 
        //component -> se incrementa solo cada vez que se ejecute numberOfComponents
        //
        return figuras.count
    }
      //que se metera en cada uno de las columnas
    func pickerView(_ pickerView: UIPickerView, tittleForRow row: Int, forComponent component: Int) -> String{
        //tambien se cicla, en el cual se va a ir anidando. 
        //como es una matriz, se debe de acceder
        return figuras[row]
    }

    
    

}