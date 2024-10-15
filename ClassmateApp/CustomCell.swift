//
//  CustomCell.swift
//  ClassmateApp
//
//  Created by RYAN SPENCER on 10/15/24.
//

import Foundation
import UIKit

class CustomCell: UITableViewCell{
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var infoView: UITextView!
    
    func configure(student: Student){
       nameLabel.text = student.name
       infoView.text = student.toString()
    }
    
}
