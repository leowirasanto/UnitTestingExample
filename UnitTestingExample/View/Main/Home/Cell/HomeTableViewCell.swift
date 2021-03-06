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
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var lastOnlineLbl: UILabel!
    
    var student: Student? {
        didSet {
            nameLbl.text = student?.fullname
            classLbl.text = student?.classId?.className()
            studentImg.setImage(student?.ppUrl)
            studentImg.round(studentImg.bounds.width / 2)
            lastOnlineLbl.text = "Last online: \(student?.lastUpdate?.formatStringDate(with: "yyyy-MM-dd HH:mm", to: "dd MMM yyyy, HH:mm") ?? "-")"
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        cardView.dropShadow()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
