//
//  DiceCollectionViewController.swift
//  DiceRoller
//
//  Created by Allen Spicer on 5/24/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import Foundation
import UIKit

class DiceCollectionViewController: UICollectionViewController{
    
    
    var diceHolder : Dictionary<String,Die> = Dictionary()
    
    
    
    override func viewDidLoad() {
        let plusButton: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: #selector(plusButtonTapped))
            
        navigationItem.rightBarButtonItem = plusButton
    }
    
    func plusButtonTapped(){
        let newDie = Die()
        newDie.name = "Allen"
        newDie.rollIt()
        diceHolder[newDie.name!] = newDie
    
    }
    
    
}