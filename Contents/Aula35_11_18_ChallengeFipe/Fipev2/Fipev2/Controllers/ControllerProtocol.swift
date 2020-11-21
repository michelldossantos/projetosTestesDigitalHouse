//
//  ControllerProtocol.swift
//  Fipev2
//
//  Created by Michel dos Santos on 20/11/20.
//

import UIKit

protocol ControllerProtocol {
    
    
    func getNumberOfRows() -> Int
    
    func getNextController(index: Int) -> UIViewController
    
    func getTitleForCell(at index: Int) -> String
    
    func getViewTitle() -> String
    
    func loadData(onComplete: @escaping (_ success: Bool) -> Void)
    
    
    
}
