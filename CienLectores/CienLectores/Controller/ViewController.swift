//
//  ViewController.swift
//  CienLectores
//
//  Created by Meriba Torres Barrientos on 9/8/19.
//  Copyright © 2019 Ruth Meriba Torres. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet weak var lblTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Cien Lectores Dijeron"
        // self.lblTitle.text = "Hola Ruth"
        let team1 = Team(name: "Equipo 1", teamScore: 0)
        let team2 = Team(name: "Equipo 2", teamScore: 0)
        let answer1 = Answer(name: "Respuesta 1A", answerScore: 10)
        let question1 = Question(name: "Pregunta 1", answers: [answer1])
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        return.question1.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableView {
        <#code#>
    }
    
}

