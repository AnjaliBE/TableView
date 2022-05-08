//
//  ImageTableViewCell.swift
//  DisplayImagesTableView
//
//  Created by Mac on 20/04/22.
//

import UIKit

class ImageTableViewCell: UITableViewCell {
    
    @IBOutlet weak var animalImage:UIImageView!
    @IBOutlet weak var animalName:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
