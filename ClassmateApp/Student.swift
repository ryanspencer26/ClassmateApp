//
//  Student.swift
//  ClassmateApp
//
//  Created by RYAN SPENCER on 10/2/24.
//

import Foundation

class Student{
    
    var name: String
    var nickname: String
    var year: Int
    var image: String
    
    init(name: String, nickname: String, year: Int, image: String) {
        self.name = name
        self.nickname = nickname
        self.year = year
        self.image = image
    }
    
    func toString()->String{
        return "Name: \(name)\nNickname: \(nickname)\nYear: \(year)"
    }
    
}
