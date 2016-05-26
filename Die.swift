//
//  Die.swift
//  DiceRoller
//
//  Created by Allen Spicer on 5/24/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit



class Die: AnyObject {
    var face:Int = 0
    var faceValues:Array<Int> = []
    var currentValue: Int = 0
   var name: String = ""
    var section: String = ""
    var number: Int = 0
    
    
    func rollIt(){
        currentValue = Int(arc4random_uniform(UInt32(face)))
    }
    

}

