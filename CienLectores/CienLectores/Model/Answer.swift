//
//  Answer.swift
//  CienLectores
//
//  Created by Meriba Torres Barrientos on 9/22/19.
//  Copyright © 2019 Ruth Meriba Torres. All rights reserved.
//

import Foundation

struct Answer {
    var name: String
    var answerScore: Int
    var isShow: Bool
    
    init(name: String, answerScore: Int) {
        self.name = name
        self.answerScore = answerScore
        self.isShow = false
    }
}


