//
//  HeaderView.swift
//  DiceRoller
//
//  Created by Allen Spicer on 5/24/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {

    @IBOutlet weak var headerLabel: UILabel!
    
    var title:String = ""
    
    enum title:String {
        case a = "5 Die 4 Sides"
        
        case b = "6 Die 6 Sides"
        
        case c = "3 Dies 10 Sides"
        
        case d = "5 Die 20 Sides"
    }
    
    

    
}
