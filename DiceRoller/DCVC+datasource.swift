//
//  DCVC+datasource.swift
//  DiceRoller
//
//  Created by Allen Spicer on 5/24/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit

extension DiceCollectionViewController{
    /// Mark Data Source Stuff
    
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return self.diceHolder.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("dieCell", forIndexPath: indexPath)
        
        let keyArray = Array(self.diceHolder.keys)
        let selectedDie = self.diceHolder[keyArray[indexPath.row]]
        
        let label =  UILabel(frame: cell.bounds)
        
        label.text = String(selectedDie!.currentValue)
        label.layer.cornerRadius = 10
        label.layer.borderWidth = 1
        label.layer.borderColor = (UIColor.blackColor().CGColor)
        label.textAlignment = .Center
        for subView in cell.contentView.subviews {
            subView.removeFromSuperview()
        }
        
        cell.contentView.addSubview(label)

        
        return cell
    }
    
    
    

    
}
