//
//  Questions.swift
//  PersonalityQuiz
//
//  Created by Charles Choi on 3/6/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import Foundation

struct Question {
    var text : String
    var type : ResponseType
    var answers : [Answer]
}

enum ResponseType {
    case single, multiple,ranged
}

struct Answer {
    var text : String
    var type : AnimalType
}



