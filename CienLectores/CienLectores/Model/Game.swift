//
//  Game.swift
//  CienLectores
//
//  Created by Meriba Torres Barrientos on 9/22/19.
//  Copyright © 2019 Ruth Meriba Torres. All rights reserved.
//

import Foundation

struct Game {
    /// Singlentón
    static var share = Game()
    var teams: [Team] = []
    var questions: [Question] = []
    private init () {}
}
