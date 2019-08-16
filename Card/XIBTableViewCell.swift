//
//  XIBTableViewCell.swift
//  Card
//
//  Created by VERTEX22 on 2019/08/15.
//  Copyright © 2019 原田悠嗣. All rights reserved.
//

import UIKit

class XIBTableViewCell: UITableViewCell {
    
    // 画像表示用
    @IBOutlet weak var xibImage: UIImageView!
    // 名前表示用ラベル
    @IBOutlet weak var nameLabel: UILabel!
    // 職業表示用ラベル
    @IBOutlet weak var jobLabel: UILabel!
    // 出身地表示用ラベル
    @IBOutlet weak var fromLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
