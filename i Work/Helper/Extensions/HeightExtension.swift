//
//  HeightExtension.swift
//  i Work
//
//  Created by promatics on 05/04/21.
//

import Foundation
import UIKit

extension UIViewController{
    func updateCollectionHeight(collectionName : UICollectionView , collectionHeight : NSLayoutConstraint){
            var frame = collectionName.frame
            frame.size.height = collectionName.contentSize.height
            collectionName.frame = frame
            collectionName.reloadData()
            collectionName.layoutIfNeeded()
            collectionHeight.constant = CGFloat(collectionName.contentSize.height)
        }
    
    func updateTableHeight(tableName : UITableView , tableHeight : NSLayoutConstraint){
            var frame = tableName.frame
            frame.size.height = tableName.contentSize.height
        tableName.frame = frame
        tableName.reloadData()
        tableName.layoutIfNeeded()
        tableHeight.constant = CGFloat(tableName.contentSize.height)
        }
}
