//
//  ExtensionViewControllerSearchBar.swift
//  10_30iBuy
//
//  Created by Michel dos Santos on 25/11/20.
//

import UIKit

extension ViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String){
        
        arrayFilter(string: searchText)
        print(arrayFilter.count)
    }
    
}
