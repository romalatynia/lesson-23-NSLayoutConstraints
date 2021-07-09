//
//  ExampleCell.swift
//  NSLayoutConstraints
//
//  Created by Harbros47 on 26.02.21.
//

import UIKit

class OutgoingCell: UITableViewCell {

    @IBOutlet weak var massegeLabel: UILabel!
    @IBOutlet weak var massegeView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
