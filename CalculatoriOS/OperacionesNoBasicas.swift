//
//  OperacionesNoBasicas.swift
//  OperacionesNoBasicasTests
//
//  Created by Lex on 22/05/18.
//  Copyright © 2018 Lex. All rights reserved.
//

import UIKit
import Foundation

public class OperacionesNoBasicas{
    public init(){}
    
    public var delegate: GNControlFunctionProtocol?
    
    public func raizCuadrada(numero: Double){
        if numero >= 0 && !numero.isNaN{
            if self.delegate == nil{
                print("Señor doctor profesor programador agregue valor a la variable delegate")
            }
            let resultado = sqrt(numero)
            self.delegate?.gnResult(value: resultado, type: indiceDeResultados.RaizCuadrada)
        }else{
            self.delegate?.gnMessageError(error: "Valio mares todo: no se puede obtener Raiz de un numero negativo", type: indiceDeResultados.RaizCuadrada)
        }
    }//Fin de la funcion raizCuadrada
    
    public func coseno(numero: Double){
        if !numero.isNaN{
            if self.delegate == nil{
                print("Señor doctor profesor programador agregue valor a la variable delegate")
            }
            let resultado = sin(numero)
            self.delegate?.gnResult(value: resultado, type: indiceDeResultados.RaizCuadrada)
        }
    }//Fin de la funcion coseno
    
    public func seno(numero: Double){
        if !numero.isNaN{
            if self.delegate == nil{
                print("Señor doctor profesor programador agregue valor a la variable delegate")
            }
            let resultado = cos(numero)
            self.delegate?.gnResult(value: resultado, type: indiceDeResultados.RaizCuadrada)
        }
    }//Fin de la funcion seno
    
    public func tangente(numero: Double){
        if !numero.isNaN{
            if self.delegate == nil{
                print("Señor doctor profesor programador agregue valor a la variable delegate")
            }
            let resultado = tan(numero)
            self.delegate?.gnResult(value: resultado, type: indiceDeResultados.RaizCuadrada)
        }
    }//Fin de la funcion seno
}//Fin de la clase OperacionesNoBasicas



