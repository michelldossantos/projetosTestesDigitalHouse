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

enum enumFilter {
    static let state = 1
    static let country = 0
    static let all = 2
    
}

enum enumCountrys{
    static let all = 0
    static let brasil = 1
    static let china = 2
}

enum enumStates{
    static let all = 0
    static let RS = 1
    static let CN = 2
    static let RJ = 3
}

enum stringOfState{
    static let RJ = "RJ"
    static let RS = "RS"
    static let CN = "CN"
    
}

enum stringOfCountries{
    static let BR = "BR"
    static let CN = "CN"
}



class ViewController: UIViewController {
    
    @IBOutlet var searchBarCitys: UISearchBar!
    @IBOutlet var tableViewList: UITableView!
    
    @IBOutlet weak var pickerViewCitys: UIPickerView!
    
    var arrayCities = [City]()
    var arrayFilter = [City]()
    let arrayState = ["Todos Estados","RS","CN","RJ"]
    let arrayCountry = [" Todos Países", "Brasil", "China"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewList.delegate = self
        tableViewList.dataSource = self
        searchBarCitys.delegate = self
        pickerViewCitys.delegate = self
        pickerViewCitys.dataSource = self
        
        
        arrayCities.append(City(name: "Sapiranga", state: stringOfState.RS, country: stringOfCountries.BR, numberOfInhabitants: 90000, temperature: 8))
        arrayCities.append(City(name: "Ararica", state: stringOfState.RS, country: stringOfCountries.BR, numberOfInhabitants: 90000, temperature: 8))
        arrayCities.append(City(name: "Barra do Piraí", state: stringOfState.RJ, country: stringOfCountries.BR, numberOfInhabitants: 90000, temperature: 8))
        arrayCities.append(City(name: "Novo Hamburgo", state: stringOfState.RS, country: stringOfCountries.BR, numberOfInhabitants: 90000, temperature: 8))
        arrayCities.append(City(name: "Sapucaia", state: stringOfState.RS, country: stringOfCountries.BR, numberOfInhabitants: 90000, temperature: 8))
        arrayCities.append(City(name: "Hong Kong", state: stringOfState.CN, country: stringOfCountries.CN, numberOfInhabitants: 90000, temperature: 8))
        arrayCities.append(City(name: "Porto Alegre", state: stringOfState.RS, country: stringOfCountries.BR, numberOfInhabitants: 90000, temperature: 8))
        arrayCities.append(City(name: "Barra Mansa", state: stringOfState.RJ, country: stringOfCountries.BR, numberOfInhabitants: 90000, temperature: 8))
        arrayCities.append(City(name: "Canela", state: stringOfState.RS, country: stringOfCountries.BR, numberOfInhabitants: 90000, temperature: 8))
        arrayCities.append(City(name: "Hancheu", state: stringOfState.CN, country: stringOfCountries.CN, numberOfInhabitants: 90000, temperature: 8))
        arrayCities.append(City(name: "Caxias do sul", state: stringOfState.RS, country: stringOfCountries.BR, numberOfInhabitants: 90000, temperature: 8))
        arrayCities.append(City(name: "Araruama", state: stringOfState.RJ, country: stringOfCountries.BR, numberOfInhabitants: 90000, temperature: 8))
        arrayCities.append(City(name: "Tianjin", state: stringOfState.CN, country: stringOfCountries.CN, numberOfInhabitants: 90000, temperature: 8))
        arrayCities.append(City(name: "Wuhan", state: stringOfState.CN, country: stringOfCountries.CN, numberOfInhabitants: 90000, temperature: 8))
        arrayCities.append(City(name: "Campo Bom", state: stringOfState.RS, country: stringOfCountries.BR, numberOfInhabitants: 90000, temperature: 8))
        
        arrayCities.append(City(name: "Gramado", state: stringOfState.RS, country: stringOfCountries.BR, numberOfInhabitants: 90000, temperature: 8))
        arrayCities.append(City(name: "Rio Janeiro", state: stringOfState.RJ, country: stringOfCountries.BR, numberOfInhabitants: 90000, temperature: 8))
        arrayCities.append(City(name: "Pequin", state: stringOfState.CN, country: stringOfCountries.CN, numberOfInhabitants: 90000, temperature: 8))
        arrayCities.append(City(name: "Angra dos Reis.", state: stringOfState.RJ, country: stringOfCountries.BR, numberOfInhabitants: 90000, temperature: 8))
        
        
        
    }
    
    
}

extension ViewController: UITableViewDelegate{
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if arrayFilter.isEmpty{
            return arrayCities.count
        }
        return arrayFilter.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cel = tableView.dequeueReusableCell(withIdentifier: "listTableViewCell", for: indexPath) as! listTableViewCell
        if arrayFilter.isEmpty{
            cel.setupLabelName(city: arrayCities[indexPath.row])
        }else{
            cel.setupLabelName(city: arrayFilter[indexPath.row])
        }
        
        
        return cel
    }
    
    
}

extension ViewController: UISearchBarDelegate{
    
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)  {
        
        
        arrayFilter = [City]()
        for city in arrayCities{
            if city.name.contains(searchText) || city.state.contains(searchText)
            || city.country.contains(searchText){
                arrayFilter.append(city)
                
            }
        }
        if searchText == ""{
            arrayFilter = arrayCities
            
        }
        tableViewList.reloadData()
        
        
    }
}

extension ViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        arrayFilter = [City]()
        if component == enumFilter.country{
            
            switch row {
            case enumCountrys.brasil:
                arrayFilter = arrayCities.filter{$0.country == stringOfCountries.BR}
            case enumCountrys.china:
                arrayFilter = arrayCities.filter{$0.country == stringOfCountries.CN}
            case enumCountrys.all:
                arrayFilter  = arrayCities
            default:
                print("error")
            }
            
           
                
          
                }
        
        if component == enumFilter.state{
            
            switch row {
            case enumStates.RS:
                arrayFilter = arrayCities.filter{$0.state == stringOfState.RS}
            case enumStates.RJ:
                arrayFilter = arrayCities.filter{$0.state == stringOfState.RJ}
            case enumCountrys.all:
                arrayFilter  = arrayCities
            case enumStates.CN:
                arrayFilter = arrayCities.filter{$0.state == stringOfState.CN}
            default:
                print("error")
            }
            
           
                
          
                }
        tableViewList.reloadData()
            }
        }
        
    
    


extension ViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == enumFilter.state{
            return arrayState.count
        }
        if component == enumFilter.country{
            return arrayCountry.count
        }
        return 3
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       
        
        if component == enumFilter.country {
            return arrayCountry[row]
        }
        if component == enumFilter.state {
            return arrayState[row]
        }
         return "algo deu errado"
        
    }
}


