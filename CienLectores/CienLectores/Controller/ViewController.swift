//
//  ViewController.swift
//  CienLectores
//
//  Created by Meriba Torres Barrientos on 9/8/19.
//  Copyright © 2019 Ruth Meriba Torres. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate   {
    //@IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var selectedTeam: UISegmentedControl!
    
    @IBOutlet weak var showRedScore: UILabel!
    @IBOutlet weak var showBlueScore: UILabel!
    
    var currentQuestion: Int = 0
    var currentTeam: Int = 0
    var beforeTeam: Int = 0
    let roundScore: Int = 100
    
    struct ErrorCount {
        static var errorCount: Int = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem?.isEnabled = false
        self.title = "Cien Lectores Dijeron"
//        print(Game.share.questions[0].answers?[0].name)
        self.tableView.tableFooterView = UIView()
        self.tableView.register(UINib(nibName: "QuestionCellTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "QuestionCellTableViewCell")
        self.tableView.register(UINib(nibName: "AnwersCellTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "AnwersCellTableViewCell")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if let view = tableView.dequeueReusableCell(withIdentifier: "QuestionCellTableViewCell") as? QuestionCellTableViewCell {
            view.lblQuestion.text = Game.share.questions[currentQuestion].name
            return view
        } else {
            return UIView()
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let view = tableView.dequeueReusableCell(withIdentifier: "AnwersCellTableViewCell",  for: indexPath) as? AnwersCellTableViewCell {
            if Game.share.questions[currentQuestion].answers?[indexPath.row].isShow ?? false {
                view.lblAnswers.text = Game.share.questions[currentQuestion].answers?[indexPath.row].name
                //sumapuntos
            } else {
                view.lblAnswers.text = "       * * * * * * * * * * * * * * * * * * * * * * * * * * *   "
            }
            return view
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Game.share.questions[currentQuestion].answers?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        Game.share.questions[currentQuestion].answers?[indexPath.row].isShow = true
        addPoints(indexPath: indexPath)
        showScore()
        tableView.reloadData()
        //sumado puntos
    }
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath)  -> IndexPath? {
        if (Game.share.questions[currentQuestion].answers?[indexPath.row].isShow == true) {
            return nil
        } else {
            return indexPath
        }
    }
    
    func nextQuestion () {
        self.currentQuestion+=1
        if self.currentQuestion >= Game.share.questions.count {
            //GAMEOVER
        } else {
            self.tableView.reloadData()
        }
    }
    
    func addPoints(indexPath: IndexPath) {
        Game.share.teams[self.currentTeam].teamScore += Game.share.questions[self.currentQuestion].answers?[indexPath.row].answerScore ?? 0
        print (Game.share.teams[self.currentTeam].teamScore)
    }
    
    func showScore (){
        self.showRedScore.text = String(Game.share.teams[0].teamScore)
        self.showBlueScore.text = String(Game.share.teams[1].teamScore)
    }
    
    func stealPoints(){
        if self.currentTeam == 0 {
            Game.share.teams[0].teamScore = Game.share.teams[0].teamScore - roundScore
            Game.share.teams[1].teamScore = Game.share.teams[1].teamScore + roundScore
        } else {
            Game.share.teams[0].teamScore = Game.share.teams[0].teamScore + roundScore
            Game.share.teams[1].teamScore = Game.share.teams[1].teamScore - roundScore
        }
    }
    
    @IBAction func nextQuestionButtonPressed(_ sender: Any) {
        nextQuestion()
    }

    @IBAction func chooseTeam(sender: UISegmentedControl) {
        self.currentTeam = sender.selectedSegmentIndex
        print (currentTeam)
        
    }
    
    @IBAction func errorButtonPressed(_ sender: UIButton) {
//        let alert = UIAlertController(title: "Error", message: "Ups... intenta de nuevo", preferredStyle: .alert)
//        let action = UIAlertAction(title: "Okay", style: .default) { action in
//            print("equis")
//            self.view.isUserInteractionEnabled = true
//        }
//
//        alert.addAction(action)
//        self.view.isUserInteractionEnabled = false
//        self.present(alert, animated: true, completion: nil)
        ErrorCount.errorCount+=1
        let alertCustom = AlertCustom(nibName: "AlertCustom", bundle: Bundle.main)
        self.view.isUserInteractionEnabled = false
        alertCustom.delegate = self
        self.present(alertCustom, animated: true, completion: nil)
        if ErrorCount.errorCount >= 3 {
            ErrorCount.errorCount = 0
        }
    }
    
    @IBAction func stealPointsPressed() {
        self.stealPoints()
        self.showScore()
    }
}
extension ViewController: AlertCustomDelegate {
    func selectViewController() {
        self.view.isUserInteractionEnabled = true
    }
    func selectOk() {
        self.view.isUserInteractionEnabled = true
    }
}
