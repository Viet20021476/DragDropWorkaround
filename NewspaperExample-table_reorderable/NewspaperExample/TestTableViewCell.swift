//
//  TestTableViewCell.swift
//  NewspaperExample
//
//  Created by VietND2 on 23/02/2023.
//  Copyright © 2023 Example. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        
        for subViewA in self.subviews {
            if (subViewA.classForCoder.description() == "UITableViewCellReorderControl") {
                if subViewA.subviews.contains(where: { $0.tag == 999 }) {
                    return
                }
                subViewA.backgroundColor = .black
                let someview = UIImageView.init(frame: subViewA.bounds)
                
                subViewA.addSubview(someview)
                someview.autoresizingMask = [.flexibleWidth, .flexibleWidth]
                someview.backgroundColor = UIColor.black
                someview.image = UIImage.init(named: "icDelete")
                someview.tag = 999
                someview.contentMode = .scaleAspectFit
                someview.isUserInteractionEnabled = false
                break;
            }
        }
    }
    
}
