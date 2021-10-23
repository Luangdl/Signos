//
//  ViewController.swift
//  Signos
//
//  Created by Luan Gomes on 23/10/21.
//

import UIKit

class ViewController: UITableViewController {

    var signos:[String] = []
    var significadoSignos: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        significadoSignos.append("Cuidadoso com tudo e com todos, é paciente e produtivo. Desse modo, são pessoas em que se podem confiar e costumam ser muito fiéis")
        significadoSignos.append("Animados e comunicativos, eles tem a mente aberta e são muito espertos")
        significadoSignos.append("São dedicados e gentis, sempre ouvindo ou cuidando de alguém por perceberam suas emoções e problemas")
        significadoSignos.append("Inteligentes e corajosos, são líderes natos. Por outro lado, são expressivos e determinados: quando colocam algo na mente, pode ter certeza que vão até o fim para conquistá-la")
        significadoSignos.append("Observação e eficiência são marcas do virginiano, que é bastante atencioso e sincero com os demais e está sempre resolvendo um problema: seja seu ou dos outros")
        significadoSignos.append("Extremamente diplomáticos, são sinceros e buscam ponderar sempre para chegar no melhor resultado. Para isso contam com sua simpatia, boa comunicação e tranquilidade")
        significadoSignos.append("Sua boa memória, ciúmes e às vezes obsessão fazem com que o nunca esqueçam do que lhe fizeram, se tornando vingativos e rancorosos")
        significadoSignos.append("São talentosos, inteligentes e justos. São pessoas estimulantes, que gostam de se divertir e têm bastante espontaneidade e vitalidade")
        significadoSignos.append("para um capricorniano não há nada mais importante na vida do que a família. ")
        
        significadoSignos.append("As pessoas nascidas sob o signo de Aquário veem o mundo como um lugar cheio de possibilidades.")
        
        significadoSignos.append("São altruístas, estão sempre dispostos a ajudar os outros, sem esperar receber nada em troca.")
    
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaReuso = "celulaReuso"
        let definicao = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        definicao.textLabel?.text = signos[ indexPath.row ]
        
        return definicao
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertController = UIAlertController(title: "Signo", message: significadoSignos[indexPath.row], preferredStyle: .alert)
        
        let acao = UIAlertAction(title: "OK", style: .destructive, handler: nil)
        
        alertController.addAction(acao)
        
        present(alertController, animated: true, completion: nil)
        
        //print(significadoSignos)
    }

}

