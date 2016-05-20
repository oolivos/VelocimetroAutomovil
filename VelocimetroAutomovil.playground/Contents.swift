//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(VelocidadInicial: Velocidades){
        self = VelocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    init(){
        velocidad = Velocidades.Apagado
        print("(\(velocidad.rawValue), Velocidad Apagado 0 km / horas)")
    }
    
    func cambioVelocidad()-> (velocidadActual : Int, velocidadActualDescripcion : String) {
        
        var tipoVelocidad : String = ""
        
        switch velocidad {
        case Velocidades.Apagado:
            velocidad = Velocidades.VelocidadBaja
            tipoVelocidad = "Velocidad Baja"
            break
        case Velocidades.VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            tipoVelocidad = "Velocidad Media"
            break
        case Velocidades.VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            tipoVelocidad = "Velocidad Alta"
            break
        case Velocidades.VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
            tipoVelocidad = "Velocidad Media"
            break
        
            
        }
        return (velocidad.rawValue, "\(tipoVelocidad) \(velocidad.rawValue) km / horas")
        
    }
    
}

var auto = Auto()
auto.velocidad.rawValue
for i in 1...20{
    print(auto.cambioVelocidad())
}


