//
//  OperacionesNoBasicas.swift
//  OperacionesNoBasicasTests
//
//  Created by Lex on 22/05/18.
//  Copyright © 2018 Lex. All rights reserved.
//

import Foundation
public class OperacionesNoBasicas: funcionesErrores, GNControlFunctionProtocol{
    public override init(){}
    var gnControlDeEventos = funcionesErrores()
    
    public func raizCuadrada(numero: Double){
        if numero >= 0 && !numero.isNaN{
            let resultado = sqrt(numero)
            gnControlDeEventos.gnResult(value: resultado, type: .RaizCuadrada)
            //gnResult(value: resultado, type: .RaizCuadrada)
        }else{
            //print("El valor ingresado debe ser mayor o igual a cero '0', no se aceptan letras. XD")
            gnControlDeEventos.gnMessageError(error: "Solo se aceptan numeros positivos Rufian", type: .RaizCuadrada)
        }
    }//Fin de la funcion raizCuadrada
    
    
    public func seno(numero: Double){
        if numero >= 0 && !numero.isNaN{
            let resultado = sin(numero)
            gnControlDeEventos.gnResult(value: resultado, type: .Seno)
        }else{
            gnControlDeEventos.gnMessageError(error: "Solo puedes usar numeros ", type: .Seno)
        }
        
    }//Fin de la funcion seno
    
    public func coseno(numero: Double){
        if numero >= 0 && !numero.isNaN{
            let resultado = cos(numero)
            gnControlDeEventos.gnResult(value: resultado, type: .Coseno)
        }else{
            gnControlDeEventos.gnMessageError(error: "Solo puedes usar numeros", type: .Coseno)
        }
    }//Fin de la funcion coseno
    
    public func tangente(numero: Double){
        if numero >= 0 && !numero.isNaN{
            let resultado = tan(numero)
            gnControlDeEventos.gnResult(value: resultado, type: .Coseno)
        }else{
            gnControlDeEventos.gnMessageError(error: "Solo puedes usar numeros ", type: .Coseno)
        }
    }//Fin de la funcion tangente
}//Fin de la clase OperacionesNoBasicas
