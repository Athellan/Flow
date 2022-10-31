//
//  FilmViewModel.swift
//  Flow
//
//  Created by Apprenant 63 on 31/10/2022.
//

import Foundation

class FilmViewModel: ObservableObject {
    
    
    @Published var films = [FilmTest]()
    
    func fetchUsers() async {
        
        // 1 - Url to fetch
        guard let url = URL(string: "https://omdbapi.com/?apikey=1c85a0a8&s=Batman&page=2") else {
            return
        }
        
        // 2 - Create the request
        var request = URLRequest(url: url)
        // 2.1 - Set the request method
        request.httpMethod = "GET"
        
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
                        self.films = []
                    }
                    
                    // Map dto to country and send it to main thread
                    DispatchQueue.main.async {
                        for film in response.Search {
                            self.films.append(
                                FilmTest(title: film.Title,
                                     poster: film.Poster)
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
