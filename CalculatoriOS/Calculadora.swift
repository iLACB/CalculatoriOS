//
//  Calculadora.swift
//  IOSCalculator
//
//  Created by Gonet on 21/05/18.
//  Copyright © 2018 Gonet. All rights reserved.
//

import Foundation

public class Calculadora: NSObject{
    public override init(){}
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
        print("El resultado de la división es: \(resultado)")
        return resultado
    }
    
}
