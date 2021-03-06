//
//  ControlDeFallos.swift
//  operaciones
//
//  Created by Lex on 24/05/18.
//  Copyright © 2018 Lex. All rights reserved.
//

public protocol GNControlFunctionProtocol{
    func gnMessageError(error: String, type: indiceDeResultados)
    func gnResult(value: Double, type: indiceDeResultados)
}

public enum indiceDeResultados: Int {
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

public enum indiceDeErrores: Int {
    case RaizNegativaDeNumNegativo = 0
    case DivisionEntreCero         = 1
    case NoOperable                = 2
    
    
    func toString() -> String {
        var tipoOperacion = ""
        
        switch self {
        case .RaizNegativaDeNumNegativo:
            tipoOperacion = "No existen Raices Negativas para operaciones Reales"
            break
        case .DivisionEntreCero:
            tipoOperacion = "Un numero dividido entre cero, no esta definido"
            break
        case .NoOperable:
            tipoOperacion = "Solo se aceptan numeros"
            break
        }
        return tipoOperacion
    }
}
