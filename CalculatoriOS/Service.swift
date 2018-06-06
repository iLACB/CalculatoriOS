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
    
    public func get() {
        
        guard let url = URL(string: "https://restcountries.eu/rest/v2/all") else {
            print("Error creating URL")
            return
            
        }
        let session = URLSession.shared
        session.dataTask(with: url) {(data, response, error) in
            
            do{
                let countries = try JSONDecoder().decode([Country].self, from: data!)
                
                for country in countries{
                    print(country.name as Any)
                    print(country.capital as Any)
                    print(country.region as Any)
                }
                
            }catch{
                print("Error")
            }
            }.resume()
    }
}


