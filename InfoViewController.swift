//
//  InfoViewController.swift
//  ClassmateApp
//
//  Created by RYAN SPENCER on 10/3/24.
//

import UIKit

class InfoViewController: UIViewController {
    
    var currentStudent: Student!
    var currentIndex: Int!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var studentImage: UIImageView!
        
    @IBOutlet weak var infoView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        currentIndex = 0
        currentStudent = AppData.students[currentIndex]
        updateScreen()
        
    }
    
    @IBAction func next(_ sender: Any) {
        if currentIndex < AppData.students.count-1{
            currentIndex += 1
            currentStudent = AppData.students[currentIndex]
        } else {
            currentIndex = 0
            currentStudent = AppData.students[currentIndex]
        }
        updateScreen()
    }
    
    @IBAction func previous(_ sender: Any) {
        if currentIndex > 0 {
            currentIndex -= 1
            currentStudent = AppData.students[currentIndex]
        } else {
            currentIndex = AppData.students.count-1
            currentStudent = AppData.students[currentIndex]
        }
        updateScreen()
    }
    
    @IBAction func sort(_ sender: Any) {
        
        AppData.students.sort(by: {$0.name < $1.name})
        currentIndex = 0
        currentStudent = AppData.students[currentIndex]
        updateScreen()
    }
    
    func updateScreen(){
        nameLabel.text = currentStudent.name
        infoView.text = currentStudent.toString()
        studentImage.image = currentStudent.image
    }
    
}
