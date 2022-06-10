//
//  Localizacao.swift
//  ConsultaCepAPI
//
//  Created by Gabriel de Castro Chaves on 09/06/22.
//

struct Localizacao: Codable {
    var cep: String
    var logradouro: String
    var bairro: String
    var localidade: String
    var uf: String
    var ddd: String
}
