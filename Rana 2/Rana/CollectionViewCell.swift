//
//  CollectionViewCell.swift
//  Rana
//
//  Created by Rana on 23/08/1444 AH.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var days: UILabel!
    @IBOutlet weak var date: UILabel!
    
    override func awakeFromNib() {
//        date.frame = CGRect(x:  ,y: width: 50, height: 50)
        date.layer.masksToBounds = true
        date.layer.cornerRadius = date.frame.width/2
    }
}
