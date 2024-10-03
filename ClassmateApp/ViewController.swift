//
//  ViewController.swift
//  ClassmateApp
//
//  Created by RYAN SPENCER on 10/2/24.
//

import UIKit

class AppData{
    
    static var score = 0
    static var quizKey: [String:String] = [:]
    static var students = [Student]()
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        AppData.students.append(Student(name: "Sean McCain", nickname: "Boat Gone Sean", year: 11, image: "missing"))
        AppData.students.append(Student(name: "Logan Gough", nickname: "Googball Googan", year: 11, image: "missing"))
        AppData.students.append(Student(name: "Michael Gruper", nickname: "Michael Michael Tricycle", year: 11, image: "missing"))
        AppData.students.append(Student(name: "John Gariepy", nickname: "Gymmy John", year: 12, image: "missing"))
        AppData.students.append(Student(name: "Daniel Huseby", nickname: "Bananiel", year: 11, image: "missing"))
        AppData.students.append(Student(name: "Matthew Fitch", nickname: "Glitch Fitch", year: 11, image: "missing"))
        AppData.students.append(Student(name: "Ryan Stark", nickname: "Rat Ryan", year: 11, image: "missing"))
        AppData.students.append(Student(name: "Peter Mickle", nickname: "Peter Kickle", year: 11, image: "missing"))
        AppData.students.append(Student(name: "Evan Meyer", nickname: "Flutin Evan", year: 11, image: "missing"))
        AppData.students.append(Student(name: "Eva Noftz", nickname: "No Pickle Noftz", year: 12, image: "missing"))
        AppData.students.append(Student(name: "Ava Schmidt", nickname: "ABBA Ava", year: 12, image: "missing"))
        AppData.students.append(Student(name: "Justin Weber", nickname: "Wicked Weber", year: 12, image: "missing"))
        AppData.students.append(Student(name: "Brennan Reichard", nickname: "Brawlin Brennan", year: 10, image: "missing"))
        AppData.students.append(Student(name: "Cam Bradford", nickname: "Chef Cam", year: 12, image: "missing"))
        
        for student in AppData.students{
            print("\(student.toString())\n")
            AppData.quizKey[student.name] = student.nickname
        }
        
    }
    
}

