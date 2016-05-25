//
//  Die.swift
//  DiceRoller
//
//  Created by Allen Spicer on 5/24/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit

protocol ArrayRepresentable {
    associatedtype ArrayType
    func toArray() -> [ArrayType]
}

extension Range: ArrayRepresentable{
    func toArray() -> [Element] {
        return [Element](self)
    }
}


class Die: AnyObject {
    var d20face:Int = 20
    var d20faceValues:Array<Int> {return (1...d20face).toArray()}
    var d10face:Int = 10
    var d10faceValues:Array<Int> {return (1...d10face).toArray()}
    var d6face:Int = 6
    var d6faceValues:Array<Int> {return (1...d6face).toArray()}
    var d4face:Int = 4
    var d4faceValues:Array<Int> {return (1...d4face).toArray()}
    var currentValue = 0
    var name: String?
    var section: String?
    
    init(){
        name = ""
    }
    
    func rollIt(){
       let  d20currentValue = d20faceValues[Int(arc4random_uniform(UInt32(d20face)))]
        let d10currentValue = d10faceValues[Int(arc4random_uniform(UInt32(d10face)))]
        let d6currentValue = d6faceValues[Int(arc4random_uniform(UInt32(d6face)))]
       let  d4currentValue = d4faceValues[Int(arc4random_uniform(UInt32(d4face)))]
        
        
    }
    

}

