//
//  CounterViewModel.swift
//  WelcomeBack
//
//  Created by Sengsathit SILALAK on 30/09/2022.
//

import Foundation

class UsersViewModel: ObservableObject{
    
    @Published var users = [User]()
    
    func fetchUsers() async {
        
        // 1 - Url to fetch
        guard let url = URL(string: "https://api.airtable.com/v0/appwl2MJpMuuWOIhn/py-to-airtable?maxRecords=3&view=Grid%20view") else {
            return
        }
        
        // 2 - Create the request
        var request = URLRequest(url: url)
        // 2.1 - Set the request method
        request.httpMethod = "GET"
        // 2.2 - Set the request header : authorization token
        request.setValue(
            "Bearer key8BUOAxYrrlTdSz",
            
            forHTTPHeaderField: "Authorization"
            
        )
        //request.addValue("brw=brwH24kX3vmN9G77w", forHTTPHeaderField: "Cookie")
        
        
        // 3 - Create the task to run
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            
            if let error = error {
                // handle error
                print(error)
            } else if
                let data = data,
                let response = response as? HTTPURLResponse,
                response.statusCode == 200 {
                
                do {
                    // Decode JSON response
                    let response: ResponseDtoUser = try JSONDecoder().decode(ResponseDtoUser.self, from: data)
                    
                    // Empty data before filling it again
                    DispatchQueue.main.async {
                        self.users = []
                    }
                    
                    // Map dto to country and send it to main thread
                    for record in response.records {
                        DispatchQueue.main.async {
                            self.users.append(
                                User(password: record.fields.password,email:record.fields.email, name: record.fields.name)
                            )
                        }
                    }
                } catch {
                    // Handle error
                    print(error)
                }

            }
            
        }
        
        // 4 - Launch the task
        task.resume()
        
    }

}
