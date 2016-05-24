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
    var face:Int = 20
    var faceValues:Array<Int> {return (1...face).toArray()}
    var currentValue = 0
    var name: String?
    
    init(){
        name = ""
    }
    
    func rollIt(){
        currentValue = faceValues[Int(arc4random_uniform(UInt32(face)))]
    }
    

}

