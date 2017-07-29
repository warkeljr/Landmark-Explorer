//
//  PencilVC.swift
//  landmarkExplorer
//
//  Created by W.S. van Arkel jr. on 05-07-17.
//  Copyright © 2017 W.S. van Arkel jr. All rights reserved.
//

import UIKit

class PencilVC: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionviewCell: UICollectionViewCell!
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var MapView: UIButton!
    
    
    
    var colArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        shadowView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return colArray.count
    }
    
    func shadowView() {
        
        myView.layer.cornerRadius = 10
        myView.clipsToBounds = false
        myView.layer.shadowColor = UIColor.black.cgColor
        myView.layer.shadowOpacity = 1
        myView.layer.shadowOffset = CGSize.zero
        myView.layer.shadowRadius = 10
        
        
        
    }
    
    
}
