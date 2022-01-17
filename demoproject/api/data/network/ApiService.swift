//
//  ApiService.swift
//  demoproject
//
//  Created by jayant kumar on 1/17/22.
//

import Foundation

class ApiService : ObservableObject{
    
    @Published var posts:[Post] = []
    
    func getPost() {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            fatalError("url is missing")
        }
        let urlRequest = URLRequest(url: url)
        
        let dataTask = URLSession.shared.dataTask(with: urlRequest){ (data,response,error) in
            
            if let error = error {
                print(error)
                return
            }
            
            guard let response = response as? HTTPURLResponse else {return}
            
            if response.statusCode == 200 {
                guard let data  = data else {return}
                DispatchQueue.main.async {
                    do{
                        let decodePost = try JSONDecoder().decode([Post].self,from: data)
                        self.posts = decodePost
                    }catch let error {
                        print(error)
                    }
                }
            }
            
        }
        dataTask.resume()
    }

}
