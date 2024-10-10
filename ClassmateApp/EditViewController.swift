//
//  EditViewController.swift
//  ClassmateApp
//
//  Created by RYAN SPENCER on 10/9/24.
//

import UIKit

class EditViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var inputLabel: UILabel!
    
    @IBOutlet weak var nicknameField: UITextField!
    
    @IBOutlet weak var yearField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameField.delegate = self
        nicknameField.delegate = self
        yearField.delegate = self
        
        nameField.text = AppData.students[AppData.index].name
        nicknameField.text = AppData.students[AppData.index].nickname
        yearField.text = "\(AppData.students[AppData.index].year)"
        
    }
    

    @IBAction func editStudent(_ sender: Any) {
        if nameField.text! != "" && nicknameField.text! != ""{
            if let blah = Int(yearField.text!){
                if nameField.text! != AppData.students[AppData.index].name || nicknameField.text! != AppData.students[AppData.index].nickname || blah != AppData.students[AppData.index].year {
                    AppData.students[AppData.index].name = nameField.text!
                    AppData.students[AppData.index].nickname = nicknameField.text!
                    AppData.students[AppData.index].year = blah
                    inputLabel.isHidden = false
                    inputLabel.textColor = UIColor.green
                    inputLabel.text = "Student edited"
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
