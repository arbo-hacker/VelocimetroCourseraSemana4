/**
 * %author  Alejandro Barreto
 * %create  15/11/2015
 * %Description Tarea de la Semana 4 del curso "Swift: programar para iOS"
 **/

import UIKit

enum Velocidades : Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init (velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad : Velocidades
    var estadoNumerico : Int
    
    init(){
        self.velocidad = .Apagado
        estadoNumerico = self.velocidad.rawValue
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String ){
        let leyenda : String
        estadoNumerico = self.velocidad.rawValue
        
        switch self.velocidad{
        case .Apagado:
            self.velocidad = .VelocidadBaja
            leyenda = "Apagado"
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
            leyenda = "Velocidad Baja"
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
            leyenda = "Velocidad Media"
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
            leyenda = "Velocidad Alta"
        }
        
        return (actual: estadoNumerico, velocidadEnCadena: leyenda)
    }
    
}

var auto = Auto()
var tupla : (actual : Int, velocidadEnCadena : String )

for var i in 1...20 {
    
    tupla = auto.cambioDeVelocidad()
    print("\(tupla.actual), \(tupla.velocidadEnCadena)")
}