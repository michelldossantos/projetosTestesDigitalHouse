//
//  refazer_VersaoOriginal.swift
//  exercise_01
//
//  Created by Michel dos Santos on 22/10/20.
//


//addView()
//
//}
//
//@objc func addView(){
//if canAddViewHeight() {
//    yHeight += sizeHeight
//    let myview = UIView(frame: CGRect(x: xWidth, y: yHeight, width: sizeWidth, height: sizeHeight))
//    myview.isUserInteractionEnabled = true
//    myview.backgroundColor = .random()
//    view.addSubview(myview)
//    tapVie(view: myview)
//}else{
//    if canAddViewWidth(){
//        xWidth += sizeWidth
//        yHeight = 15
//    }else{
//    crateViewMaster()
//    }
//    
//}
//
//}
//
//func tapVie(view: UIView){
//let tap = UITapGestureRecognizer(target: self, action:  #selector(addView))
//view.addGestureRecognizer(tap)
//
//}
//
//func canAddViewHeight() -> Bool{
//return yHeight <= view.frame.height - sizeHeight
//}
//
//func canAddViewWidth() -> Bool{
//return xWidth <= view.frame.width - sizeWidth
//}
//
//func crateViewMaster(){
//let myview = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
//myview.center = view.center
////        myview.backgroundColor = .random()
////        view.addSubview(myview)
//
//UIView.animate(withDuration: 20) {
//    myview.frame = self.view.frame
//    myview.backgroundColor = .random()
//}completion: { _ in
//    self.view.addSubview(myview)
//    self.xWidth = 15
//    self.yHeight = 15
//    self.addView()
//}
//}
