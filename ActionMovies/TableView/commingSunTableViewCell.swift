//
//  commingSunTableViewCell.swift
//  Real_DeAn
//
//  Created by TranVu on 14/03/2022.
//

import UIKit

class commingSunTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageMovies: UIImageView!
    @IBOutlet weak var nameMovies: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
