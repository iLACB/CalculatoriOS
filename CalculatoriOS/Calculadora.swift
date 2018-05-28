//
//  Calculadora.swift
//  IOSCalculator
//
//  Created by Gonet on 21/05/18.
//  Copyright © 2018 Gonet. All rights reserved.
//

import Foundation

public class Calculadora {
    
    public init() {}
    
    public var protoDelegate: GNControlFunctionProtocol?
    
    public func suma(x: Double, y: Double){
        let resultado = x+y
        if !x.isNaN && !y.isNaN{
            if self.protoDelegate == nil{
                print("Debe asignar una valor a la variable 'protoDelegate'")
            }
            self.protoDelegate?.gnResult(value: resultado, type: .Suma)
        } else{
            self.protoDelegate?.gnMessageError(error: "Solo se aceptan numeros", type: .Suma)
        }
    }
    
    public func resta(x: Double, y: Double){
        let resultado = x - y
        if !x.isNaN && !y.isNaN{
            if self.protoDelegate == nil{
                print("Debe asignar una valor a la variable 'protoDelegate'")
            }
            self.protoDelegate?.gnResult(value: resultado, type: .Resta)
        } else {
            self.protoDelegate?.gnMessageError(error: "Solo se aceptan numeros", type: .Resta)
        }
    }
    
    public func multiplicacion(x: Double, y: Double){
        let resultado = x * y
        if !x.isNaN && !y.isNaN{
            if self.protoDelegate == nil{
                print("Debe asignar una valor a la variable 'protoDelegate'")
            }
            self.protoDelegate?.gnResult(value: resultado, type: .Multiplicacion)
        } else {
            self.protoDelegate?.gnMessageError(error: "Solo se aceptan numeros", type: .Multiplicacion)
        }
    }
    
    public func division(x: Double, y: Double){
        let resultado = x/y
        if y == 0 {
            if self.protoDelegate == nil{
                print("Debe asignar una valor a la variable 'protoDelegate'")
            }
            self.protoDelegate?.gnMessageError(error: "\(Int(y)) Es un valor incorrecto para la division", type: .Division)
        }
        else {
            self.protoDelegate?.gnResult(value: Double(resultado), type: .Division)
        }
    }
}
