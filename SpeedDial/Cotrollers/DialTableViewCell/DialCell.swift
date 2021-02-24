//
//  DialCell.swift
//  SpeedDial
//
//  Created by iMac on 24/02/21.
//

import UIKit

class DialCell: UITableViewCell {
    
//MARK:- Outlets
    
    @IBOutlet weak var BackGroundView: UIView!
    @IBOutlet weak var LBL_Name: UILabel!
    @IBOutlet weak var LBL_PhoneNumber: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        BackGroundView.layer.cornerRadius = 10
        // Configure the view for the selected state
    }
    
}
