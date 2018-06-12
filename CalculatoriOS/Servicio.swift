//
//  Servicio.swift
//  CalculatoriOS
//
//  Created by Gonet on 12/06/18.
//  Copyright © 2018 Gonet. All rights reserved.
//

import Foundation

public protocol GNService{
    func GNName(name: String)
    func GNCapital(capital: String)
    func GNRegion(region: String)
    func GNError(error: String)
}

public struct Country: Decodable {
    public var name: String?
    public var capital: String?
    public var region: String?
    
    //    public init(dictionary: NSDictionary?){
    //        if let dic = dictionary{
    //            name = dic["name"] as? String
    //            capital = dic["capital"] as? String
    //            region = dic["region"] as? String
    //        }
    //    }
    //
    //    public var Name: String {
    //        return name ?? "Vacio"
    //    }
    //
    //    public var Capital: String {
    //        return capital ?? "Vacio"
    //    }
    //
    //    public var Region: String {
    //        return region ?? "Vacio"
    //    }
}
