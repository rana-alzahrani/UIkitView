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
        date.layer.masksToBounds = true
        date.layer.cornerRadius = date.frame.width/2
    }
}
