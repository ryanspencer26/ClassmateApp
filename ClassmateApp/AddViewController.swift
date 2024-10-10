//
//  AddViewController.swift
//  ClassmateApp
//
//  Created by RYAN SPENCER on 10/9/24.
//

import UIKit

class AddViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var nicknameField: UITextField!
    
    @IBOutlet weak var yearField: UITextField!
    
    @IBOutlet weak var inputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameField.delegate = self
        nicknameField.delegate = self
        yearField.delegate = self
        
    }
    
    @IBAction func addStudent(_ sender: Any) {
        
        if nameField.text! != "" && nicknameField.text! != ""{
            if let blah = Int(yearField.text!){
                if !AppData.quizKey.contains(where: {$0.key == nameField.text!}){
                    AppData.students.append(Student(name: nameField.text!, nickname: nicknameField.text!, year: blah, image: UIImage.portrait))
                    inputLabel.isHidden = false
                    inputLabel.textColor = UIColor.green
                    inputLabel.text = "Student added"
                    return
                } else {
                    inputLabel.isHidden = false
                    inputLabel.textColor = UIColor.red
                    inputLabel.text = "Student already exists"
                    return
                }
            }
        }
        inputLabel.isHidden = false
        inputLabel.textColor = UIColor.red
        inputLabel.text = "Invalid Input"
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
            textField.resignFirstResponder()
            return true;
    }
    
}
