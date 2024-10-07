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
        
        AppData.students.append(Student(name: "Sean McCain", nickname: "Boat Gone Sean", year: 11, image: UIImage.sean))
        AppData.students.append(Student(name: "Logan Gough", nickname: "Googball Googan", year: 11, image: UIImage.logan))
        AppData.students.append(Student(name: "Michael Gruper", nickname: "Michael Michael Tricycle", year: 11, image: UIImage.michael))
        AppData.students.append(Student(name: "John Gariepy", nickname: "Gymmy John", year: 12, image: UIImage.john))
        AppData.students.append(Student(name: "Daniel Huseby", nickname: "Bananiel", year: 11, image: UIImage.daniel))
        AppData.students.append(Student(name: "Matthew Fitch", nickname: "Glitch Fitch", year: 11, image: UIImage.matthew))
        AppData.students.append(Student(name: "Ryan Stark", nickname: "Rat Ryan", year: 11, image: UIImage.stark))
        AppData.students.append(Student(name: "Peter Mickle", nickname: "Peter Kickle", year: 11, image: UIImage.peter))
        AppData.students.append(Student(name: "Evan Meyer", nickname: "Flutin Evan", year: 11, image: UIImage.evan))
        AppData.students.append(Student(name: "Eva Noftz", nickname: "No Pickle Noftz", year: 12, image: UIImage.eva))
        AppData.students.append(Student(name: "Ava Schmidt", nickname: "ABBA Ava", year: 12, image: UIImage.ava))
        AppData.students.append(Student(name: "Justin Weber", nickname: "Wicked Weber", year: 12, image: UIImage.justin))
        AppData.students.append(Student(name: "Brennan Reichard", nickname: "Brawlin Brennan", year: 10, image: UIImage.brennan))
        AppData.students.append(Student(name: "Cam Bradford", nickname: "Chef Cam", year: 12, image: UIImage.cam))
        AppData.students.append(Student(name: "Jayden Sawyer", nickname: "Sleepy Sawyer", year: 12, image: UIImage.jayden))
        
        for student in AppData.students{
            print("\(student.toString())\n")
            AppData.quizKey[student.name] = student.nickname
        }
        
    }
    
}

