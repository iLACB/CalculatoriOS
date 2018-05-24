//
//  Calculadora.swift
//  IOSCalculator
//
//  Created by Gonet on 21/05/18.
//  Copyright © 2018 Gonet. All rights reserved.
//

import Foundation

public class Calculadora: funcionesErrores, GNControlFunctionProtocol {
    
    public override init(){}
    
    var gnControlFallos = funcionesErrores()
    
    public func suma(x: Double, y: Double) -> Double{
        let resultado = x+y
        if !x.isNaN && !y.isNaN{
            gnControlFallos.gnResult(value: resultado, type: .Suma)
        } else{
            gnControlFallos.gnMessageError(error: "Solo se aceptan numeros", type: .Suma)
        }
        return resultado
    }
    
    public func resta(x: Double, y: Double) -> Double{
        let resultado = x - y
        if !x.isNaN && !y.isNaN{
            gnControlFallos.gnResult(value: resultado, type: .Resta)
        } else {
            gnMessageError(error: "Solo se aceptan numeros", type: .Resta)
        }
        return resultado
    }
    
    public func multiplicacion(x: Double, y: Double) -> Double{
        let resultado = x * y
        if !x.isNaN && !y.isNaN{
            gnControlFallos.gnResult(value: resultado, type: .Multiplicacion)
        } else {
            gnControlFallos.gnMessageError(error: "Solo se aceptan numeros", type: .Multiplicacion)
        }
        return resultado
    }
    
    public func division(x: Double, y: Double) -> Double{
        let resultado = x/y
        if y == 0 {
            gnControlFallos.gnMessageError(error: "\(y) Es un valor incorrecto para la division", type: .Division)
        }
        else {
            gnControlFallos.gnResult(value: Double(resultado), type: .Division)
        }
        
        return resultado
    }
    
    
    
}
