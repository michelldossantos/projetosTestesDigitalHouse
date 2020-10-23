//
//  ViewController.swift
//  exercise_01
//
//  Created by Michel dos Santos on 21/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    var yHeight: CGFloat = 38
    var xWidth: CGFloat = 7
    let sizeWidth: CGFloat = 97
    let sizeHeight: CGFloat = 100
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createNewView()

    }
    
    func createNewView(){
        
        if canAddNewViewHeight(){
            
            
            
            let newView = UIView(frame: CGRect(x: xWidth, y: yHeight, width: sizeWidth, height: sizeHeight))
            newView.backgroundColor = .random()
            newView.isUserInteractionEnabled = true
            view.addSubview(newView)
            tapOnView(view: newView)
            yHeight += sizeHeight + 5
        }else{
            xWidth += sizeWidth + 5
            if canAddNewViewWdthi(){
                yHeight = 38
                
                createNewView()
            }else{
                createViewMaster()
                
            }
        }
        
    
    }
    
    func tapOnView(view: UIView){
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(callCreateNewView))
        view.addGestureRecognizer(tap)
    }
    
    @objc func callCreateNewView(){
        createNewView()
    }
    
    
    func canAddNewViewHeight() -> Bool{
        return yHeight <= view.frame.height - sizeHeight
    }
    
    func canAddNewViewWdthi() -> Bool{
        return xWidth <= view.frame.width - sizeWidth
    }
    
    func createViewMaster(){
        
        let viewMaster = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        viewMaster.center = view.center
        viewMaster.backgroundColor = .random()
        view.addSubview(viewMaster)
        
        UIView.animate(withDuration: 4) {
            viewMaster.frame = self.view.frame
            viewMaster.backgroundColor = .white
        } completion: { _ in
            self.resetViews()
            self.createNewView()
        }

        
    }
    
    func resetViews() {

        xWidth = 7
        yHeight = 38
        
        for currentView in view.subviews {
            currentView.removeFromSuperview()
        }
    }
}




extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func random() -> UIColor {
        return UIColor(
           red:   .random(),
           green: .random(),
           blue:  .random(),
           alpha: 1.0
        )
    }
}




