//
//  StuInfoViewController.swift
//  ClassmateApp
//
//  Created by RYAN SPENCER on 10/18/24.
//

import UIKit

class StuInfoViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var textViewOutlet: UITextView!
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameLabel.text = AppData.students[AppData.index].name
        imageOutlet.image = AppData.students[AppData.index].image
        textViewOutlet.text = AppData.students[AppData.index].toString()
        
    }

}
