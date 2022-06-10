//
//  ConsultaViaCepAPI.swift
//  ConsultaCepAPI
//
//  Created by Gabriel de Castro Chaves on 09/06/22.
//
import UIKit

class ConsultaViaCepApi {
    
    
func makeRequest(completion: @escaping (Localizacao) -> (), cep: Any) {
    guard let url = URL(string: "https://viacep.com.br/ws/\(cep)/json/") else {return}
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        print("response: \(String(describing: response))")
        print("error: \(String(describing: error))")
        guard let responseData = data else {return} // valida se possui algo no data
        DispatchQueue.main.async {
        do {
            let cep = try JSONDecoder().decode(Localizacao.self, from: responseData)
            completion(cep) // com o completion é possível manipular o objeto
        } catch let error {
            print("error: \(error)")
        }
    }
}
    task.resume()
}
    
}
