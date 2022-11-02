import Foundation

class FilmAddedViewModel: ObservableObject {
    
    
    @Published var filmsAdded = [FilmAdded]()
    
    func fetchUsers() async {
        
        // 1 - Url to fetch
        guard let url = URL(string: "https://api.airtable.com/v0/appMl82aryE3VlpSx/FilmAdded") else {
            return
        }
        
        // 2 - Create the request
        var request = URLRequest(url: url)
        // 2.1 - Set the request method
        request.httpMethod = "GET"
        // 2.2 - Set the request header : authorization token
        request.setValue(
            "Bearer keyh00pZb5jOfRRj0",
            forHTTPHeaderField: "Authorization"
        )
        
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
                    let response: ResponseDto = try JSONDecoder().decode(ResponseDto.self, from: data)
                    
                    // Empty data before filling it again
                    DispatchQueue.main.async {
                        self.filmsAdded = []
                    }
                    
                    // Map dto to country and send it to main thread
                    for record in response.records {
                        DispatchQueue.main.async {
                            self.filmsAdded.append(
                                FilmAdded(title:record.fields.title, image: String(record.fields.image ?? "test"))
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
