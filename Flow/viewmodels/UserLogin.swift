//
//  UserLogin.swift
//  Flow
//
//  Created by Adel Djelti on 31/10/2022.
//

import Foundation
class UserLogin : ObservableObject{
    
    
    @Published var user = [UserLogin]()
    
    
    func fetchUsers() async {
        
        
        // 1 - Url to fetch
        guard let url = URL(string: "https://api.airtable.com/v0/appwl2MJpMuuWOIhn/py-to-airtable") else {
            return
        }
        
        // 2 - Create the request
        var request = URLRequest(url: url)
        // 2.1 - Set the request method
        request.httpMethod = "POST"
        // 2.2 - Set the request header : authorization token
        request.setValue(
            "Bearer key8BUOAxYrrlTdSz",
            forHTTPHeaderField: "Authorization"
        )
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        
        let newValueToSend = PostDto(
            records: [
                PostDto.RecordDto(
                    fields: PostDto.FieldsDto(
                        name : "aaa",
                        email: "eee"
                    )
                )
            ]
        )
        
        let jsonData = try? JSONEncoder().encode(newValueToSend)
        
        
        request.httpBody = jsonData
        
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            
            if let error = error {
                // handle error
                print("Error took place \(error)")
                return
            }
            
            guard let data = data else {
                return
            }
            
            do {
                let PostDto = try JSONDecoder().decode(PostDto.self, from: data)
                
                print("Response data : \n \(PostDto)")
                print("Todo name : \n \(PostDto.records)")
                
                
            }
            
            catch let jsonErr{
                print(jsonErr)
            }
            
            
        }
        
        task.resume()
        
    
        
    }
}
            

