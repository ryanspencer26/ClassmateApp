//
//  Student.swift
//  ClassmateApp
//
//  Created by RYAN SPENCER on 10/2/24.
//

import Foundation
import UIKit

class Student{
    
    var name: String
    var nickname: String
    var year: Int
    var image: UIImage
    
    init(name: String, nickname: String, year: Int, image: UIImage) {
        self.name = name
        self.nickname = nickname
        self.year = year
        self.image = image
    }
    
    func toString()->String{
        return "Name: \(name)\nNickname: \(nickname)\nYear: \(year)"
    }
    
}
