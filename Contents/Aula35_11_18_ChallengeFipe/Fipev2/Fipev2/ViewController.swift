//
//  ViewController.swift
//  Fipev2
//
//  Created by Michel dos Santos on 20/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    var controller: ControllerProtocol!
    
    
    @IBOutlet var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        
        
        title = controller.getViewTitle()
        loadData()
    }
    
    func loadData(){
        controller.loadData { succes in
            self.tableview.reloadData()
        }
    }
    
    static func getView(controller: ControllerProtocol) -> ViewController{

        
        let viewDefault = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! ViewController
        viewDefault.controller = controller
        return viewDefault
    }


}

extension ViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextController = controller.getNextController(index: indexPath.row)
        navigationController?.pushViewController(nextController, animated: true)
    }
    
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return controller.getNumberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = controller.getTitleForCell(at: indexPath.row)
        
        return cell
    }
    
    
}

