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
        let resultado = x + y
        print("El resultado de la suma es: \(resultado)")
        return resultado
    }
    
    public func resta(x: Double, y: Double) -> Double{
        let resultado = x - y
        print("El resultado de la resta es: \(resultado)")
        return resultado
    }
    
    public func multiplicacion(x: Double, y: Double) -> Double{
        let resultado = x * y
        print("El resultado de la multiplicación es: \(resultado)")
        return resultado
    }
    
    public func division(x: Double, y: Double) -> Double{
        let resultado = x/y
        if y == 0 {
            gnControlFallos.gnMessageError(error: "Valor no aceptado \(y)", type: .Division)
        }
        else {
            gnControlFallos.gnResult(value: Double(resultado), type: .Division)
        }
        
        return resultado
    }
    
    
    
}
