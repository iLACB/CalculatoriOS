//
//  ControlDeFallos.swift
//  operaciones
//
//  Created by Lex on 24/05/18.
//  Copyright © 2018 Lex. All rights reserved.
//

protocol GNControlFunctionProtocol{
    func gnMessageError(error: String, type: indiceDeResultados)
    func gnResult(value: Double, type: indiceDeResultados)
}

enum indiceDeResultados: Int {
    case RaizCuadrada   = 0
    case Seno           = 1
    case Coseno         = 2
    case Tangente       = 3
    case Suma           = 4
    case Resta          = 5
    case Multiplicacion = 6
    case Division       = 7
    
    func toString() -> String {
        var tipoOperacion = ""
        
        switch self {
        case .RaizCuadrada:
            tipoOperacion = "Raiz Cuadrada"
            break
        case .Seno:
            tipoOperacion = "Seno"
            break
        case .Coseno:
            tipoOperacion = "Coseno"
            break
        case .Tangente:
            tipoOperacion = "Tangente"
            break
        case .Suma:
            tipoOperacion = "Suma"
            break
        case .Resta:
            tipoOperacion = "Resta"
            break
        case .Multiplicacion:
            tipoOperacion = "Multiplicacion"
            break
        case .Division:
            tipoOperacion = "Division"
            break
        }
        return tipoOperacion
    }
}

public class funcionesErrores{
    //--Funciones de Control--/
    func gnMessageError(error: String, type: indiceDeResultados) {
        print("Error: \(error) & Flujo: \(type)")
    }
    
    func gnResult(value: Double, type: indiceDeResultados) {
        print("Resultado: \(value) & Flujo: \(type)")
    }
    
    func gnResultWhitObservations(value: Double,observation: String, type: indiceDeResultados) {
        print("Resultado: \(value), \(observation)Flujo: & \(type)")
    }
    
    
}




