//
//  Question.swift
//  CienLectores
//
//  Created by Meriba Torres Barrientos on 9/22/19.
//  Copyright © 2019 Ruth Meriba Torres. All rights reserved.
//

import Foundation

struct Question {
    var name: String
    var answers: [Answer]?
    
    init(name: String, answers: [Answer]) {
        self.name = name
        self.answers = answers
    }
    
}
