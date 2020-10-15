//
//  ViewController.swift
//  desafioPickerView
//
//  Created by Michel dos Santos on 14/10/20.
//

//Crie um app:
//Fase 1:
//Tenha uma listagem de cidades, uma cidade tem nome, estado, pais,  numero de habitantes e temperatura atual. (15 cidades, foquem inicialmente em nome, estado e pais direrente, nao repitam nome, mas estado e pais usem inicialmente só 3)
//Deve haver um SearchBar de busca, enquanto o usuário digita, deve filtrar o conteúdo da listagem, a pesquisa dele, deve filtrar por nome, cidade e estado.
//Se o usuário limpar a busca, deve exibir a lista completa.
//Fase 2:
//Deve haver um PickerView com 2 colunas: Estado e Pais.
//Quando o usuário trocar, deve filtrar a lista.
//Além dos estados e paises, sempre deve haver a opção "Todos".
//Fase 3:
//Ao tocar numa cidade, deve abrir uma tela via modal.
//Essa tela tem que ter um botão fechar.
//A tela tem que mostrar todas as infos da cidade.
//Dicas:
//Os estados e paises devem ser o resultado dos paises que estão no array de cidades.
//A célula da cidade, deve mostrar todas infos.
//Quem quiser ir além e colocar um mapa na tela de detalhe da cidade, pode tentar:
//https://www.raywenderlich.com/7738344-mapkit-tutorial-getting-started

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var searchBarCitys: UISearchBar!
    @IBOutlet var tableViewList: UITableView!
    
    @IBOutlet weak var pickerViewCitys: UIPickerView!
    
    var arrayCities = [City]()
    var arrayFilter = [City]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewList.delegate = self
        tableViewList.dataSource = self
        searchBarCitys.delegate = self
        
        
        arrayCities.append(City(name: "Sapiranga", state: "RS", country: "BR", numberOfInhabitants: 90000, temperature: 8))
        arrayCities.append(City(name: "Ararica", state: "RS", country: "BR", numberOfInhabitants: 90000, temperature: 8))
        arrayCities.append(City(name: "Novo Hamburgo", state: "RS", country: "BR", numberOfInhabitants: 90000, temperature: 8))
        arrayCities.append(City(name: "Sapucaia", state: "RS", country: "BR", numberOfInhabitants: 90000, temperature: 8))
        arrayCities.append(City(name: "Porto Alegre", state: "RS", country: "BR", numberOfInhabitants: 90000, temperature: 8))
        arrayCities.append(City(name: "Sapiranga", state: "RS", country: "BR", numberOfInhabitants: 90000, temperature: 8))
        arrayCities.append(City(name: "Sapiranga", state: "RS", country: "BR", numberOfInhabitants: 90000, temperature: 8))
        
        
    }


}

extension ViewController: UITableViewDelegate{
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return arrayFilter.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cel = tableView.dequeueReusableCell(withIdentifier: "listTableViewCell", for: indexPath) as! listTableViewCell
        cel.setupLabelName(city: arrayFilter[indexPath.row])
        
        return cel
    }
    
    
}

extension ViewController: UISearchBarDelegate{
    

    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)  {
        
        arrayFilter = [City]()
        for city in arrayCities{
            if city.name.contains(searchText){
                arrayFilter.append(city)
                
            }
        }
 
    }
}
    


