//
//  CarDetailViewController.swift
//  10_26_exerciseTabbar
//
//  Created by Michel dos Santos on 26/10/20.
//

import UIKit

class CarDetailViewController: UIViewController {
    
    @IBOutlet var tableViewCarDetail: UITableView!
    

    var arrayCar = [Car]()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Lista de Carros"
        
        tableViewCarDetail.delegate = self
        tableViewCarDetail.dataSource = self
        
        arrayCar.append(Car(model: "Uno", year: "2000", nameImage: "uno.jpg"))
        arrayCar.append(Car(model: "Gol", year: "2010", nameImage: "gol.jpg"))
        arrayCar.append(Car(model: "Siena", year: "2020", nameImage: "siena.jpeg"))
        arrayCar.append(Car(model: "Uno", year: "2003", nameImage: "uno.jpg"))
        arrayCar.append(Car(model: "Uno", year: "2000", nameImage: "uno.jpg"))
        arrayCar.append(Car(model: "Uno", year: "2003", nameImage: "uno.jpg"))
        arrayCar.append(Car(model: "Siena", year: "2020", nameImage: "siena.jpeg"))
        arrayCar.append(Car(model: "Uno", year: "2003", nameImage: "uno.jpg"))
        arrayCar.append(Car(model: "Gol", year: "2010", nameImage: "gol.jpg"))
        arrayCar.append(Car(model: "Uno", year: "2000", nameImage: "uno.jpg"))
        arrayCar.append(Car(model: "Gol", year: "2010", nameImage: "gol.jpg"))
        arrayCar.append(Car(model: "Siena", year: "2020", nameImage: "siena.jpeg"))
        arrayCar.append(Car(model: "Uno", year: "2003", nameImage: "uno.jpg"))
        arrayCar.append(Car(model: "Uno", year: "2000", nameImage: "uno.jpg"))
        arrayCar.append(Car(model: "Uno", year: "2003", nameImage: "uno.jpg"))
        arrayCar.append(Car(model: "Siena", year: "2020", nameImage: "siena.jpeg"))
        arrayCar.append(Car(model: "Uno", year: "2003", nameImage: "uno.jpg"))
        arrayCar.append(Car(model: "Gol", year: "2010", nameImage: "gol.jpg"))

        
    }
   
}

extension CarDetailViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let screenDetail = UIStoryboard(name: "DetailCar", bundle: nil).instantiateInitialViewController() as? DetailCarViewController{
                    navigationController?.pushViewController(screenDetail, animated: true)
            screenDetail.car = arrayCar[indexPath.row]
  
        }
    }
    
}

extension CarDetailViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCar.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.setup(car: arrayCar[indexPath.row])
        return cell
        
    }
    
    
    
    
}


