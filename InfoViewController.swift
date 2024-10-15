//
//  InfoViewController.swift
//  ClassmateApp
//
//  Created by RYAN SPENCER on 10/3/24.
//

import UIKit

class InfoViewController: UIViewController {
    
    var currentStudent: Student!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var studentImage: UIImageView!
        
    @IBOutlet weak var infoView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        currentStudent = AppData.students[AppData.index]
        updateScreen()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        updateScreen()
    }
    
    @IBAction func next(_ sender: Any) {
        if AppData.index < AppData.students.count-1{
            AppData.index += 1
            currentStudent = AppData.students[AppData.index]
        } else {
            AppData.index = 0
            currentStudent = AppData.students[AppData.index]
        }
        updateScreen()
    }
    
    @IBAction func previous(_ sender: Any) {
        if AppData.index > 0 {
            AppData.index -= 1
            currentStudent = AppData.students[AppData.index]
        } else {
            AppData.index = AppData.students.count-1
            currentStudent = AppData.students[AppData.index]
        }
        updateScreen()
    }
    
    @IBAction func sort(_ sender: Any) {
        AppData.students.sort(by: {$0.name < $1.name})
        AppData.index = 0
        currentStudent = AppData.students[AppData.index]
        updateScreen()
    }
    
    func updateScreen(){
        nameLabel.text = currentStudent.name
        infoView.text = currentStudent.toString()
        studentImage.image = currentStudent.image
    }
    
}
