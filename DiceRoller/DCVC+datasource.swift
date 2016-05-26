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
    
    //dice per section
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
    //given a section, return the number of dice stored
        switch section {
        //5 d4 dice
        case 0:
           return 5
       //6 d6 dice
        case 1:
           return 6
        //3 d10 dice
        case 2:
           return 3
        //5 d20 dice
        case 3:
           return 5
        default:
           return 0
        }}
    
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        //total number of dice categories 
        
        return 4
    }
    
    
    
    
    //grab each cell and change properties
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("dieCell", forIndexPath: indexPath)
        
//        //take the dictionary of string-Die pairs
//        //take just the strings and put them into an array called keyarray
//        let keyArray = Array(self.diceHolder.keys)
//        
//        //use the indexpath to located the correct key and plug it into the dictionary
//        //create local varaible which holds this instance of the die
//        let selectedDie = self.diceHolder[keyArray[indexPath.row]]
//        
        
        let label =  UILabel(frame: cell.bounds)
        label.text = String(diceHolder)
        
      //  label.text = String(selectedDie!.currentValue)
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
    
    

    
    override func collectionView(collectionView: UICollectionView,
                                 viewForSupplementaryElementOfKind kind: String,
                                atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionElementKindSectionHeader:
            let headerView =
                collectionView.dequeueReusableSupplementaryViewOfKind(kind,
                        withReuseIdentifier: "HeaderView",
                        forIndexPath: indexPath) as! HeaderView
            if (indexPath.section == 0) {
                headerView.headerLabel.text = HeaderView.title.a.rawValue
            }
            if (indexPath.section == 1) {
                headerView.headerLabel.text = HeaderView.title.b.rawValue
            }
            if (indexPath.section == 2) {
                headerView.headerLabel.text = HeaderView.title.c.rawValue
            }
            if (indexPath.section == 3) {
                headerView.headerLabel.text = HeaderView.title.d.rawValue
            }

            return headerView
        default:
            assert(false, "Unexpected element kind")
        }
    }

    
    
}
