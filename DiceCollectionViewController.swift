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
    
//var diceHolder : Array<String,Die> = Dictionary()

    var i = 0
    var d4Array = Array<Die>()
    var d6Array = Array<Die>()
    var d10Array = Array<Die>()
    var d20Array = Array<Die>()
    var diceHolder = [Array<Die>]()
    
    
override func viewDidLoad() {

    while i < 5 {
       let d4die = Die()
        d4die.currentValue = Int(arc4random_uniform(UInt32(4)))
       // d4die.name = "\(d4die.)"
        d4Array.append(d4die)
        i = i+1
    }
    i = 0
    while i < 6 {
        let d6die = Die()
        d6die.currentValue = Int(arc4random_uniform(UInt32(6)))
        // d4die.name = "\(d4die.)"
        d6Array.append(d6die)
        i = i+1
    }
     i = 0
    while i < 3 {
        let d10die = Die()
        d10die.currentValue = Int(arc4random_uniform(UInt32(10)))
        // d4die.name = "\(d4die.)"
        d10Array.append(d10die)
        i = i+1
    }
    i = 0
    while i < 5 {
        let d20die = Die()
        d20die.currentValue = Int(arc4random_uniform(UInt32(20)))
        // d4die.name = "\(d4die.)"
        d20Array.append(d20die)
        i = i+1
    }
    
    diceHolder = [d4Array, d6Array, d10Array, d20Array]
    
}

    
    
override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if motion == .MotionShake {
            
            

//            diceHolder[1]
//            diceHolder[2]
//            diceHolder[3]
//                    let selectedDie = selectedSection[indexPath.row]
            
            
            i = 0
                while i < 5 {
                    diceHolder[0][i].currentValue = Int(arc4random_uniform(UInt32(4)))
                    i = i+1
                }
            i = 0
            while i < 6 {
                diceHolder[1][i].currentValue = Int(arc4random_uniform(UInt32(6)))
                i = i+1
            }
            i = 0
            while i < 3 {
                diceHolder[2][i].currentValue = Int(arc4random_uniform(UInt32(10)))
                i = i+1
            }
            i = 0
            while i < 5 {
                diceHolder[3][i].currentValue = Int(arc4random_uniform(UInt32(20)))
                i = i+1
            }

                diceHolder = [d4Array, d6Array, d10Array, d20Array]
                self.collectionView?.reloadData()
                
        }
            


        }
}
