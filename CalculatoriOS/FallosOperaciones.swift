//
//  FallosOperaciones.swift
//  CalculatoriOS
//
//  Created by Gonet on 24/05/18.
//  Copyright © 2018 Gonet. All rights reserved.
//

import Foundation

protocol GNCalculadoraDelegate {
    func gnMessageError(error: String, type: OperacionesEnum)
    func gnResult(value: Double, type: OperacionesEnum)
}

enum OperacionesEnum: Int {
    case SUMA            = 0
    case RESTA           = 1
    case MULTIPLICACION  = 2
    case DIVISION        = 3
    
    func toString() -> String {
        var name = ""
        
        switch self {
        case .SUMA:
            name = "Suma"
            break
        case .RESTA:
            name = "Resta"
            break
        case .MULTIPLICACION:
            name = "Multiplicacion"
            break
        case .DIVISION:
            name = "Division"
            break
        }
        
        return name
    }
}

public class FallosOperaciones {
    
    func gnMessageError(error: String, type: OperacionesEnum) {
        if type == .DIVISION {
            print("Error: \(error)")
        }
    }
    
    func gnResult(value: Double, type: OperacionesEnum) {
        print("Div: \(value)")
    }
}
