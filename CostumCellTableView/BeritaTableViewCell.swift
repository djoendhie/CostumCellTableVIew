//
//  BeritaTableViewCell.swift
//  CostumCellTableView
//
//  Created by SMK IDN MI on 10/19/17.
//  Copyright © 2017 Be Dev. All rights reserved.
//

import UIKit

class BeritaTableViewCell: UITableViewCell {

    @IBOutlet weak var imgGambar: UIImageView!
    @IBOutlet weak var labelKategory: UILabel!
    @IBOutlet weak var labeltanggalBerita: UILabel!
    @IBOutlet weak var judulBerita: UILabel!
    @IBOutlet weak var isiBerita: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
