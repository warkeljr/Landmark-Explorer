//
//  MapView.swift
//  landmarkExplorer
//
//  Created by W.S. van Arkel jr. on 23-07-17.
//  Copyright © 2017 W.S. van Arkel jr. All rights reserved.
//

import UIKit
import MapKit

class MapView: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var MapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.MapView.delegate = self
        
    }

}
