import UIKit
import CoreFoundation

// Swift parte 1 - Aula 02
/*
let nome: String = "Churros"
let felicidade: Int = 5
let calorias: Double = 79.5
let vegetal: Bool = false

var endereco: String = "São Paulo"

print(nome)

func alimentoConsumido() {
    print("O Alimento consumido foi: \(nome)")
}

alimentoConsumido()

func alimentoConsumidoPar(_ nome: String, _ caloria: Double) {
    print("O Alimento consumido foi: \(nome), com calorias: \(caloria)")
}

alimentoConsumidoPar(nome, calorias)
*/

// Swift parte 1 - Aula 03
/*
let totalDeCalorias: Array<Double> = [50.5, 100]

func todasCalorias(totalDeCalorias: [Double]) -> Double {
    var total: Double = 0
    
    for caloria in totalDeCalorias {
        total += caloria
    }
    
    return total
}

let total = todasCalorias(totalDeCalorias: [50.5, 100, 400])

print(total)
*/

// Swift parte 1 - Aula 04 - 2

// Criar a primeira refeição
/*
var nome: String = "Macarrão"
var felicidade: String = "5"

// Criar segunda refeição
let nome2: String = "Churros"
let felicidade2: String = "4"

// --------------------------

// Criar uma classe que agrupe essas características:
class Refeicao {
    let nome: String = "Macarrão"
    let felicidade: String = "5"
}

// Instanciando uma classe
let refeicao = Refeicao()

print(refeicao.nome)
*/

// Swift parte 1 - Aula 04 - 2
/*
class Refeicao {
    var nome: String?
    var felicidade: String?
}

let refeicao = Refeicao()
refeicao.nome = "Refeicao"

// Cuidado => forced unwrap
print(refeicao.nome!)
 */

// Swift parte 1 - Aula 04 - 3
/*
class Refeicao {
    var nome: String?
    var felicidade: String?
}

let refeicao = Refeicao()
refeicao.nome = "Macarrão"

// Não é uma boa prática
if refeicao.nome != nil {
    print(refeicao.nome!)
}

// Boas práticas para extrair valores opcionais:
if let nome = refeicao.nome {
    print(nome)
}

// guard let
func exibeNomeDaRefeicao() {
    if let nome = refeicao.nome {
        print(nome)
    }
    
    guard let nome = refeicao.nome else {
        return
    }
    
    print(nome)
}

exibeNomeDaRefeicao()
 */

// Swift parte 1 - Aula 04 - 4
/*
let numero = Int("5")

if let n = numero {
    print(n)
} else {
    print("Erro ao converte string para int")
}
 */

// Swift parte 1 - Aula 05 - 1
class Refeicao {
    // MARK: - Atributos
    var nome: String
    var felicidade: String
    var itens: Array<Item> = []
    
    // MARK: - Construtor
    init(nome: String, felicidade: String) {
        self.nome = nome
        self.felicidade = felicidade
    }
    
    // MARK: Métodos
    func totalDeCalorias() -> Double {
        var total = 0.0
        
        for item in itens {
            total += item.calorias
        }
        
        return total
    }
}

// Swift parte 1 - Aula 05 - 2
class Item {
    var nome: String
    var calorias: Double
    
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
}

let arroz = Item(nome: "Arroz", calorias: 51.0)
let feijao = Item(nome: "Feijão", calorias: 90.0)
let contraFile = Item(nome: "Contra Filé", calorias: 287.0)

let refeicao = Refeicao(nome: "Almoço", felicidade: "5")
refeicao.itens.append(arroz)
refeicao.itens.append(feijao)
refeicao.itens.append(contraFile)

print(refeicao.nome)

if let primeiroItemDaLista = refeicao.itens.first {
    print(primeiroItemDaLista.nome)
}

print(refeicao.totalDeCalorias())
