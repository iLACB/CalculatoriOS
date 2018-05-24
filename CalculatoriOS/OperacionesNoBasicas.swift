//
//  OperacionesNoBasicas.swift
//  OperacionesNoBasicasTests
//
//  Created by Lex on 22/05/18.
//  Copyright © 2018 Lex. All rights reserved.
//

import UIKit

import Foundation

public class OperacionesNoBasicas: funcionesErrores, GNControlFunctionProtocol{
    
    
    public override init(){}
    var gnControlDeEventos = funcionesErrores()
    
    public func raizCuadrada(numero: Double){
        if numero >= 0 && !numero.isNaN{
            let resultado = sqrt(numero)
            gnControlDeEventos.gnResult(value: resultado, type: .RaizCuadrada)
        }else{
            let error = indiceDeErrores.toString(.RaizNegativaDeNumNegativo)
            gnControlDeEventos.gnMessageError(error: error() , type: .RaizCuadrada)
        }
    }//Fin de la funcion raizCuadrada
    
    
    public func seno(numero: Double){
        if  !numero.isNaN{
            let resultado = sin(numero)
            gnControlDeEventos.gnResult(value: resultado, type: .Seno)
        }else{
            let error = indiceDeErrores.toString(.NoOperable)
            gnControlDeEventos.gnMessageError(error: error(), type: .Seno)
        }
        
    }//Fin de la funcion seno
    
    public func coseno(numero: Double){
        if  !numero.isNaN{
            let resultado = cos(numero)
            gnControlDeEventos.gnResult(value: resultado, type: .Coseno)
        }else{
            let error = indiceDeErrores.toString(.NoOperable)
            gnControlDeEventos.gnMessageError(error: error(), type: .Coseno)
        }
    }//Fin de la funcion coseno
    
    public func tangente(numero: Double){
        if  !numero.isNaN{
            let resultado = tan(numero)
            gnControlDeEventos.gnResult(value: resultado, type: .Coseno)
        }else{
            let error = indiceDeErrores.toString(.NoOperable)
            gnControlDeEventos.gnMessageError(error: error() , type: .Coseno)
        }
    }//Fin de la funcion tangente
}//Fin de la clase OperacionesNoBasicas
