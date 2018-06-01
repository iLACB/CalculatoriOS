//
//  Service.swift
//  CalculatoriOS
//
//  Created by Gonet on 01/06/18.
//  Copyright © 2018 Gonet. All rights reserved.
//

import Foundation

import Foundation

public class Service{
    
    public init() {}
    
    public func get(url: String) {
        
        guard let url = URL(string: url) else {return}
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            if let response = response {
                print(response)
            }
            
            if let data = data {
                print(data)
                do{
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                }catch{
                    print(error)
                }
            }
        }.resume() 
    }
    
    public func post(params: Dictionary <String, String>, url: String){
        let parameters = [params]
        
        
        guard let url = URL(string: url) else {return}
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: []) else {return}
        request.httpBody = httpBody
        let session = URLSession.shared
        session.dataTask(with: request) {(data, response, error) in
            if let response = response {
                print(response)
            }
            
            if let data = data {
                do{
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                }catch{
                    print(error)
                }
            }
        }.resume()
    }
}
