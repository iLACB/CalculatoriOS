//
//  Service.swift
//  CalculatoriOS
//
//  Created by Gonet on 01/06/18.
//  Copyright © 2018 Gonet. All rights reserved.
//

import Foundation

public class Service{
    
    public init() {}
    
    public var protoService: GNService?
    
    public func get(url: String, error: String) {
        
        if self.protoService == nil{
            print("Debe asignar una valor a la variable 'protoService'")
        }
        
        guard let url = URL(string: url) else {
            self.protoService?.GNError(error: error)
            return
        }
        
        let session = URLSession.shared
        session.dataTask(with: url) {(data, response, error) in
            
            do{
                let countries = try JSONDecoder().decode([Country].self, from: data!)
                
                for country in countries{
                    self.protoService?.GNName(name: country.name!)
                    self.protoService?.GNCapital(capital: country.capital!)
                    self.protoService?.GNRegion(region: country.region!)
                }
                
            }catch{
                self.protoService?.GNError(error: error as! String)
            }
            }.resume()
    }
}
