//
//  TableViewCell.swift
//  UIKitTableView
//
//  Created by Lola Almasari on 22/08/1444 AH.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet var productImage: UIImageView!
    @IBOutlet var productName: UILabel!
    @IBOutlet var productDesc: UILabel!
    @IBOutlet weak var iimm: UIImageView!
    @IBOutlet weak var availableL: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
