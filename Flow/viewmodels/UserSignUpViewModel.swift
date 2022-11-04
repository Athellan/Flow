//
//  UserLogin.swift
//  Flow
//
//  Created by Adel Djelti on 31/10/2022.
//

import Foundation
class UserSignUpViewModel : ObservableObject{
    
    

    @Published var users = [User]()
    
    var nameEnter : String = ""
    var emailEnter : String = ""
    var passwordEnter : String = ""
    
    func suscription() async {
        
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
                        name : nameEnter,
                        email: emailEnter,
                        password : passwordEnter
                      
                        
                    )
                )
            ]
        )
        print(newValueToSend)
        
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
               
                print("Response data : \n \(data)")
               
                
                
            }
            
           
            
        
            
            
            
        }
        
        task.resume()
    }
}
        

        
        
      



