//
//  Game.swift
//  CienLectores
//
//  Created by Meriba Torres Barrientos on 9/22/19.
//  Copyright © 2019 Ruth Meriba Torres. All rights reserved.
//

import Foundation

struct Game {
    var teams: [Team]
    var questions: [Question]
    
    init(teams: [Team], questions: [Question]) {
        teams.self = teams
        questions.self = questions
    }
}
