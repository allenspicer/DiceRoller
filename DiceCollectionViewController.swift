//
//  DiceCollectionViewController.swift
//  DiceRoller
//
//  Created by Allen Spicer on 5/24/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import Foundation
import UIKit
import CoreMotion

class DiceCollectionViewController: UICollectionViewController{
    
var diceHolder : Dictionary<String,Die> = Dictionary()

    
override func viewDidLoad() {

        
    }
    
override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if motion == .MotionShake {
            //self.collectionView?.subviews.removeLast()
           var i = 0
            while (i < diceHolder.count){
            
                let newDie = Die()
                newDie.name = "\(i)"
                newDie.rollIt()
                diceHolder[newDie.name] = newDie
                self.collectionView?.reloadData()
                i = i+1
            }
        }
    }
    

    
}