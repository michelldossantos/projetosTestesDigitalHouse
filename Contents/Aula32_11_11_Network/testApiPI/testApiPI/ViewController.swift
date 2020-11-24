//
//  ViewController.swift
//  testApiPI
//
//  Created by Michel dos Santos on 12/11/20.
//

import UIKit
import Alamofire
import SnapKit

class ViewController: UIViewController {
    
    
    // MARK: OUTLET
    @IBOutlet weak var imageFavorite: UIImageView!
    @IBOutlet weak var segmentControlInfo: UISegmentedControl!
    @IBOutlet weak var outletNewMovie: UIButton! // REMOVE 
    @IBOutlet weak var labelOverView: UILabel!
    @IBOutlet weak var imageFilm: UIImageView!
    @IBOutlet weak var imageMovieBackGround: UIImageView!
    @IBOutlet weak var labelTitleFilm: UILabel!
    @IBOutlet weak var imageCached: UIImageView!
    @IBOutlet weak var imageeye: UIImageView!
    
    
    var segmentindicator: UIView? = nil

    
    //MARK: ACTION
    
    
    
    @IBAction func actionFavorete(_ sender: Any) {
        
        if imageFavorite.image == UIImage(systemName: "star"){
            imageFavorite.image = UIImage(systemName: "star.fill")
        }else{
            imageFavorite.image = UIImage(systemName: "star")   
        }
       
        imageFavorite.tintColor = UIColor.systemGreen
    }
    
    @IBAction func actionWatched(_ sender: Any) {
        
        if imageeye.image == UIImage(systemName: "eye"){
            imageeye.image = UIImage(systemName: "eye.slash")
        }else{
            imageeye.image = UIImage(systemName: "eye")
        }
       
        imageeye.tintColor = UIColor.systemGreen
        
    }
    
    
    @IBAction func actionNewMovie(_ sender: UIButton) {
        
        
        imageMovieBackGround.alpha = 0.2
        
        let idFilme = Int.random(in: 0..<200) //
        
        requestMovie(id: idFilme)
        segmentControlInfo.selectedSegmentIndex = 0
        segmentControl()
    }
   
    
    // Click action on segmentControll
    @IBAction func actionSegmenteControll(_ sender: UISegmentedControl) {
        segmentControl() //
    }
   
    
   
    // RequestAPI

    func requestMovie(id: Int){
        
        roundImage(image: imageCached)
        
        
        segmentControl() //  Changes the alpha of the labels according to the selected index
        
        AF.request("https://api.themoviedb.org/3/movie/\(id)?api_key=16b776cd87d99568d7cf733de5593752&language=pt-BR").responseJSON { response in
            if let dictionary = response.value as? [String: Any] {
                let movie = Movie(fromDictionary: dictionary)
                if let UrlImage = movie.posterPath{
                    self.setImgageFilm(local: UrlImage)
                }
                if let title = movie.title{
                    self.setTitleFilm(title:title )
                }
                if let overView = movie.overview{
                    self.setOverView(text: overView)
                }
                
               
            }
            
        }
    }
    
    
    func roundImage(image: UIImageView){
        image.layer.cornerRadius = imageCached.frame.size.width/2
        image.clipsToBounds = true
    }
    
   
    
    func setImgageFilm(local: String){
        let url = URL(string: "https://image.tmdb.org/t/p/w500/\(local)")
        
        let data = try? Data(contentsOf: url!)
        
        imageFilm.image = UIImage(data: data!)
        imageMovieBackGround.image = UIImage(data: data!)
        
        
    }
    
    func setTitleFilm(title: String){
        labelTitleFilm.text = title
        
    }
    
    
    func setOverView(text: String){
        labelOverView.text = text
        
    }

    
    //  Changes the alpha of the labels according to the selected index
    func segmentControl(segmentControll: UISegmentedControl){
        indexChanged() // Checks SegmentControol's Index
 
        if segmentControll.selectedSegmentIndex == 0{
            labelOverView.alpha = 0
            labelTitleFilm.alpha = 1
        }
        if segmentControll.selectedSegmentIndex == 1{
            labelOverView.alpha = 1
            labelTitleFilm.alpha = 0
        }
        if segmentControll.selectedSegmentIndex == 2{
            labelOverView.alpha = 0
            labelTitleFilm.alpha = 0
        }
    }
    
 
    
    func indexChanged(){ // Checks SegmentControol's Index

        let numberOfSegments = CGFloat(segmentControlInfo.numberOfSegments)
        let selectedIndex = CGFloat(segmentControlInfo.selectedSegmentIndex)
        let titlecount = CGFloat((segmentControlInfo.titleForSegment(at: segmentControlInfo.selectedSegmentIndex)!.count))
        segmentindicator!.snp.remakeConstraints { (make) in
        make.top.equalTo(segmentControlInfo.snp.bottom).offset(3)
        make.height.equalTo(2)
        make.width.equalTo(15 + titlecount * 8)
        make.centerX.equalTo(segmentControlInfo.snp.centerX).dividedBy(numberOfSegments / CGFloat(3.0 + CGFloat(selectedIndex-1.0)*2.0))
        }
        
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
    }
    
    
    func segmentControlCustom(custom:UISegmentedControl){
    custom.backgroundColor = .black
    custom.tintColor = .clear
    custom.selectedSegmentTintColor = .clear
    
    custom.setTitleTextAttributes([NSAttributedString.Key.font : UIFont(name: "AvenirNextCondensed-Medium", size: 20)!, NSAttributedString.Key.foregroundColor: UIColor.lightGray], for: .normal)
    segmentControlInfo.setTitleTextAttributes([NSAttributedString.Key.font : UIFont(name: "AvenirNextCondensed-Medium", size: 24)!, NSAttributedString.Key.foregroundColor: UIColor.green], for: .selected)
    
    segmentindicator = {
    let v = UIView()
    v.translatesAutoresizingMaskIntoConstraints = false
    v.backgroundColor = UIColor.green
    return v
    }()
    
    
    self.view.addSubview(segmentindicator!)
    segmentindicator!.snp.makeConstraints { (make) in
    make.top.equalTo(segmentControlInfo.snp.bottom).offset(3)
    make.height.equalTo(2)
    make.width.equalTo(15 + custom.titleForSegment(at: 0)!.count * 8)
    make.centerX.equalTo(segmentControlInfo.snp.centerX).dividedBy(custom.numberOfSegments)
    }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentControlCustom(custom:segmentControlInfo)

        indexChanged() // Checks SegmentControol's Index

        imageMovieBackGround.alpha = 0.2
        let idFilme = Int.random(in: 1..<200)
        requestMovie(id: idFilme)
    }
    
    
}

