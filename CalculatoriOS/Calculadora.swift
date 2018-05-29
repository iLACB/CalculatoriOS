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
        if self.protoDelegate == nil{
            print("Debe asignar una valor a la variable 'protoDelegate'")
            return
        }
        let resultado = x+y
        if !x.isNaN && !y.isNaN{
            self.protoDelegate?.gnResult(value: resultado, type: .Suma)
        } else{
            self.protoDelegate?.gnMessageError(error: "Solo se aceptan numeros", type: .Suma)
        }
    }
    
    public func resta(x: Double, y: Double){
        if let dele = self.protoDelegate {
            let resultado = x - y
            if !x.isNaN && !y.isNaN{
                dele.gnResult(value: resultado, type: .Resta)
            } else {
                dele.gnMessageError(error: "Solo se aceptan numeros", type: .Resta)
            }
        }else{
            print("Debe asignar una valor a la variable 'protoDelegate'")
        }
    }
    
    public func multiplicacion(x: Double, y: Double){
        if let dele = self.protoDelegate {
            let resultado = x * y
            if !x.isNaN && !y.isNaN{
                dele.gnResult(value: resultado, type: .Multiplicacion)
            } else {
                dele.gnMessageError(error: "Solo se aceptan numeros", type: .Multiplicacion)
            }
        }else{
            print("Debe asignar una valor a la variable 'protoDelegate'")
        }
    }
    
    public func division(x: Double, y: Double){
        if let dele = self.protoDelegate{
            let resultado = x/y
            if y == 0 {
                dele.gnMessageError(error: "\(Int(y)) Es un valor incorrecto para la division", type: .Division)
            }else {
                dele.gnResult(value: Double(resultado), type: .Division)
            }
        }else {
            print("Debe asignar una valor a la variable 'protoDelegate'")
        }
    }
}
