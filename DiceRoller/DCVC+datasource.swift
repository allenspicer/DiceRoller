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
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
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
    
    
//    override func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
//        
//        let sectionHeaderView: UICollectionReusableView = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "sectionTitle", forIndexPath: indexPath) as UICollectionReusableView
//        
//        let label = UILabel(frame: sectionHeaderView.bounds)
//        label.text = "Title"
//        return sectionHeaderView
//        
//    }

    
    override func collectionView(collectionView: UICollectionView,
                                 viewForSupplementaryElementOfKind kind: String,
                                                                   atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        //1
        switch kind {
        //2
        case UICollectionElementKindSectionHeader:
            //3
            let headerView =
                collectionView.dequeueReusableSupplementaryViewOfKind(kind,
                        withReuseIdentifier: "HeaderView",
                        forIndexPath: indexPath) as! HeaderView
            headerView.label.text = searches[indexPath.section].searchTerm
            return headerView
        default:
            //4
            assert(false, "Unexpected element kind")
        }
    }
    
    
    
    
    
    
    
    
    
    
    
}
