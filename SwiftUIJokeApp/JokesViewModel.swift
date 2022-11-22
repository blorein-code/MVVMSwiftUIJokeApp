//
//  JokesViewModel.swift
//  SwiftUIJokeApp
//
//  Created by Berke Topcu on 22.11.2022.
//

import Foundation

import Alamofire

class JokesViewModel : ObservableObject {
    
  @Published  var jokes = [Value]()
    
    init() {
        getJokes()
    }
    
    func getJokes() {
        AF.request("https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json").responseDecodable(of:Welcome.self) { response in
            
            switch response.result {
            case .success(let data):
                let value = data.value
                self.jokes += value
            case.failure(let error):
                print(error)
            }
            
        }
    }
    
}
