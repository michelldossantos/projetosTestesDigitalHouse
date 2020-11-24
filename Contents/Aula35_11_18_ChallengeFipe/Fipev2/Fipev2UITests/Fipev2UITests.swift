//
//  Fipev2UITests.swift
//  Fipev2UITests
//
//  Created by Michel dos Santos on 23/11/20.
//

import XCTest

class Fipev2UITests: XCTestCase {
    
    let app = XCUIApplication()

    override func setUpWithError() throws {
      
        continueAfterFailure = false
        app.launch()
     
    }

    override func tearDownWithError() throws {
       
    }

    func testExample() throws {
                      
        print("asdas")
        
        let tablesQuery = XCUIApplication().tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Acura"]/*[[".cells.staticTexts[\"Acura\"]",".staticTexts[\"Acura\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Integra GS 1.8"]/*[[".cells.staticTexts[\"Integra GS 1.8\"]",".staticTexts[\"Integra GS 1.8\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["1992 Gasolina"]/*[[".cells.staticTexts[\"1992 Gasolina\"]",".staticTexts[\"1992 Gasolina\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    
        
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
