//
//  RefeicoesTableViewController.swift
//  eggplant-brownie
//
//  Created by macOS on 08/01/1401 AP.
//

import Foundation
import UIKit

class RefeicoesTableViewController: UITableViewController {
    let refeicoes = [Refeicao(nome: "Macarrão", felicidade: 4),
                     Refeicao(nome: "Pizza", felicidade: 4),
                     Refeicao(nome: "Comida Japonesa", felicidade: 4)]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let refeicao = refeicoes[indexPath.row ]
        
        celula.textLabel?.text = refeicao.nome
        
        return celula
    }
}
