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
    var oldLayout: UICollectionViewLayout?
    var newLayout: UICollectionViewLayout?
   // let motionManager: CMMotionManager = CMMotionManager?
    
    
    override func viewDidLoad() {
        let plusButton: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: #selector(plusButtonTapped))
        let swapButton: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Compose, target: self, action: #selector(swapButtonTapped))
        
        let newFlowLayout = UICollectionViewFlowLayout()
        newFlowLayout.minimumInteritemSpacing = 20
        newFlowLayout.minimumLineSpacing = 20
        oldLayout = self.collectionView?.collectionViewLayout
        newLayout = newFlowLayout

        
        self.collectionView?.collectionViewLayout = newFlowLayout
        navigationItem.rightBarButtonItem = plusButton
        self.navigationItem.leftBarButtonItem = swapButton
        
        
    }
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
     override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if motion == .MotionShake {
            diceHolder.removeAll()
            
            //map contents of cells
            //apply function to create random values
            //apply random values to mapped labels
            self.collectionView?.reloadData()
        }
    }
    
    
    
    func plusButtonTapped(){
        let newDie = Die()
        newDie.name = "Allen\(self.diceHolder.count)"
        newDie.rollIt()
        diceHolder[newDie.name!] = newDie
        self.collectionView?.reloadData()
    }
    
    func swapButtonTapped(){
        if self.collectionView?.collectionViewLayout == oldLayout{
            self.collectionView?.collectionViewLayout = newLayout!
        }else{
            self.collectionView?.collectionViewLayout = oldLayout!
        }
        self.collectionView?.reloadData()
    }
    
}