//
//  HomeTableViewCell.swift
//  UnitTestingExample
//
//  Created by Leo Wirasanto on 20/03/20.
//  Copyright © 2020 Leo Wirasanto. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    @IBOutlet weak var studentImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var classLbl: UILabel!
    
    var student: Student? {
        didSet {
            nameLbl.text = student?.fullname
            classLbl.text = "Class '\(student?.classId ?? "A")'"
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
