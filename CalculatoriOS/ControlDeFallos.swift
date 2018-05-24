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
    case RaizCuadrada = 0
    case Seno         = 1
    case Coseno       = 2
    case Tangente     = 3
    
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
        }
        return tipoOperacion
    }
}

class funcionesErrores{
    //--Funciones de Control--/
    func gnMessageError(error: String, type: indiceDeResultados) {
        print("Error: \(error) & Flujo: \(type)")
    }
    
    func gnResult(value: Double, type: indiceDeResultados) {
        print("Resultado: \(value) & Flujo: \(type)")
    }
    
    
}




