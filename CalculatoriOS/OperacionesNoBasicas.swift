//
//  OperacionesNoBasicas.swift
//  OperacionesNoBasicasTests
//
//  Created by Lex on 22/05/18.
//  Copyright © 2018 Lex. All rights reserved.
//

import Foundation
public class OperacionesNoBasicas{
    
    public init(){}
    
    public func raizCuadrada(numero: Double)->Double{
         if numero >= 0 && !numero.isNaN{
            return sqrt(numero)
         }else{
            print("El valor ingresado debe ser mayor o igual a cero '0', no se aceptan letras. XD")
        }
        return 0
    }//Fin de la funcion raizCuadrada
    
    
    public func seno(numero: Double)->Double{
        if numero >= 0 && !numero.isNaN{
            return sin(numero)
        }else{
            print("Solo se aceptan numeros. :)")
            return 0
        }
    }//Fin de la funcion seno
    
    public func coseno(numero: Double)->Double{
        if numero >= 0 && !numero.isNaN{
            return cos(numero)
        }else{
            print("Solo se aceptan numeros. :O")
            return 0
        }
    }//Fin de la funcion coseno
    
    public func tangente(numero: Double)->Double{
        if numero >= 0 && !numero.isNaN{
            return tan(numero)
        }else{
            print("Solo se aceptan numeros. :D")
            return 0
        }
    }//Fin de la funcion tangente
    
}//Fin de la clase OperacionesNoBasicas
