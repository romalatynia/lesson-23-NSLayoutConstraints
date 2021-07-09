//
//  IncomingCellCell.swift
//  NSLayoutConstraints
//
//  Created by Harbros47 on 26.02.21.
//

import UIKit

class IncomingCell: UITableViewCell {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
