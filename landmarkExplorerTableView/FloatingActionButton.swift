//
//  FloatingActionButton.swift
//  landmarkExplorer
//
//  Created by W.S. van Arkel jr. on 03-07-17.
//  Copyright © 2017 W.S. van Arkel jr. All rights reserved.
//

import UIKit

class FloatingActionButton: UIButtonX {
    
    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {

        UIView.animate(withDuration: 0.3, animations: {
            
            if self.transform == .identity {
                self.transform = CGAffineTransform(rotationAngle: 135 * (.pi / 180))
                self.backgroundColor = #colorLiteral(red: 0.0588, green: 0.0588, blue: 0.0588, alpha: 1) /* #0f0f0f */
             } else {
                 self.transform = .identity
                self.backgroundColor = #colorLiteral(red: 1, green: 0.1725, blue: 0.5529, alpha: 1) /* #ff2c8d */
            }
        })
        
        return super .beginTracking(touch,with: event  )
    }
}
