//
//  DetailViewController.swift
//  landmarkExplorerTableView
//
//  Created by W.S. van Arkel jr. on 19-06-17.
//  Copyright © 2017 W.S. van Arkel jr. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailTittleLabel: UILabel!
    @IBOutlet weak var detailInfoTextView: UITextView!
    @IBOutlet weak var menuView: UIViewX!
    @IBOutlet weak var pencilBtn: UIButton!
    @IBOutlet weak var alarmClockBtn: UIButton!
    @IBOutlet weak var chatBalloonBtn: UIButton!
    @IBOutlet weak var detailMapView: MKMapView!
    
    var detailImageViewData: String!
    var detailTittleLabelData: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        
        self.navigationItem.title = detailTittleLabelData
        detailImageView.image = UIImage(named: detailImageViewData)
        detailTittleLabel.text = detailTittleLabelData
        
        self.menuSize()
        
        let tapGestureRocognizer = UITapGestureRecognizer(target: self, action: #selector(DetailViewController.menuViewTapped(recognizer:)))
        
        tapGestureRocognizer.numberOfTapsRequired = 1
        menuView.isUserInteractionEnabled = true
        menuView.addGestureRecognizer(tapGestureRocognizer)
        
        // MARK: todo = duration is repeated
        
        let opAnimation = CABasicAnimation(keyPath: "opacity")
        opAnimation.fromValue = 0
        opAnimation.toValue = 1
        opAnimation.duration = 1
        
        detailImageView.layer.add(opAnimation, forKey: "opacity")
        detailTittleLabel.layer.add(opAnimation, forKey: "opacity")

        detailTittleLabel.layer.cornerRadius = 7
        detailTittleLabel.layer.masksToBounds = true
        detailInfoTextView.layer.cornerRadius = 7
        detailImageView.layer.cornerRadius = 7
        detailMapView.layer.cornerRadius = 7
        
    }
    
    
    func menuViewTapped(recognizer: UITapGestureRecognizer) {
        self.menuView.transform = self.menuView.transform.rotated(by: 45 * (.pi / 180))
        
        //CGAffineTransform(rotationAngle: 45 * (.pi / 180))
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    // MARK: - Setup directions
    
    @IBAction func menuTapped(_ sender: Any) {
        
        UIView.animate(withDuration: 0.3, animations: {
            if self.menuView.transform == .identity {
                self.menuSize()
            } else {
                self.menuView.transform = .identity
            }
        })
        
        UIView.animate(withDuration: 0.5, delay: 0.2, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.0, options: [], animations: {
            
            if self.menuView.transform == .identity {
                self.pencilBtn.transform = .identity
                self.alarmClockBtn.transform = .identity
                self.chatBalloonBtn.transform = .identity
            }
            
        })
    }
    
    func menuSize() {
        menuView.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        pencilBtn.transform = CGAffineTransform(translationX: 0, y: 15)
        alarmClockBtn.transform = CGAffineTransform(translationX: 11, y: 11)
        chatBalloonBtn.transform = CGAffineTransform(translationX: 15, y: 0)
        
    }
    
}
