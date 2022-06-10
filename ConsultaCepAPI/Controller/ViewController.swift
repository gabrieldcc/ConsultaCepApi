//
//  ViewController.swift
//  ConsultaCepAPI
//
//  Created by Gabriel de Castro Chaves on 08/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Atributos
    let consultaViaCepApi = ConsultaViaCepApi()

    
    //MARK: Life Cycle View
    override func viewDidLoad() {
        super.viewDidLoad()
        }
    

    //MARK: IBAction
    @IBAction func buscaApiCepButton(_ sender: Any) {
        guard let cepString = cepTextField.text else {return}
        consultaViaCepApi.makeRequest(completion: { Localizacao in
            self.logradouroLabel.text = Localizacao.logradouro
            self.bairroLabel.text = Localizacao.bairro
            self.ufLabel.text = Localizacao.uf
            self.dddLabel.text = Localizacao.ddd
            self.cepLabel.text = Localizacao.cep
        }, cep: cepString)
    }
    
    
    //MARK: IBOutlets
    @IBOutlet weak var cepTextField: UITextField!
    @IBOutlet weak var logradouroLabel: UILabel!
    @IBOutlet weak var bairroLabel: UILabel!
    @IBOutlet weak var ufLabel: UILabel!
    @IBOutlet weak var dddLabel: UILabel!
    @IBOutlet weak var cepLabel: UILabel!
    
    
 
    
    

    
    
    
    
    
    
    
    

}

