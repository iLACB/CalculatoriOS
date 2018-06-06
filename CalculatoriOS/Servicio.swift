//
//  Servicio.swift
//  CalculatoriOS
//
//  Created by Gonet on 06/06/18.
//  Copyright © 2018 Gonet. All rights reserved.
//

import Foundation

public struct Country: Decodable {
    var name: String?
    var capital: String?
    var region: String?
    
    public init(dictionary: NSDictionary?) {
        if let dic = dictionary{
            name = (dic["name"] as? String)!
            capital = (dic["capital"] as? String)!
            region = (dic["region"] as? String)!
        }
    }
    
    public var Name: String{
        return (name)!
    }
    
    public var Capital: String{
        return (capital)!
    }
    
    public var Region: String{
        return (region)!
    }
}

