//
//  AppDelegate.swift
//  CienLectores
//
//  Created by Meriba Torres Barrientos on 9/8/19.
//  Copyright © 2019 Ruth Meriba Torres. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        let blueTeam: Team = Team(name: "Equipo Azul", teamScore: 0)
        let redTeam: Team = Team(name: "Equipo Rojo", teamScore: 0)
        
        
        var answersOne: [Answer] = []
        var answersTwo: [Answer] = []
        var answersThree: [Answer] = []
        var answersFour: [Answer] = []
        var answersFive: [Answer] = []
        var answersSix: [Answer] = []
        
        answersOne.append(Answer(name: "Celular…………………………………………………………….... 33", answerScore: 33))
        answersOne.append(Answer(name: "Ruido……………………………………………..………………… 29", answerScore: 29))
        answersOne.append(Answer(name: "Personas platicando/ Que me hablen……………………… 25", answerScore: 25))
        answersOne.append(Answer(name: "Televisión……………………………………………..…………….. 08", answerScore: 08))
        answersOne.append(Answer(name: "Tareas / Obligaciones………………………………………… 05", answerScore: 05))
        
        answersTwo.append(Answer(name: "Harry Potter………………………………………………………. 45", answerScore: 42))
        answersTwo.append(Answer(name: "Los juegos del hambre…………………………………………. 21", answerScore: 21))
        answersTwo.append(Answer(name: "Divergente………………………………………………………... 14", answerScore: 14))
        answersTwo.append(Answer(name: "Las ventajas de ser invisible…………………………………..… 11", answerScore: 11))
        answersTwo.append(Answer(name: "Cazadores de sombras…………………………………………… 9", answerScore: 09))

        answersThree.append(Answer(name: "John Green………………………………………………………… 36", answerScore: 72))
        answersThree.append(Answer(name: "J.K Rowling……………………………………………………....  19", answerScore: 38))
        answersThree.append(Answer(name: "Benito Taibo…………………………………………………….... 13", answerScore: 26))
        answersThree.append(Answer(name: "Cassandra Clare…………………………………………………. 12", answerScore: 24))
        answersThree.append(Answer(name: "Rick Riordan…………………………………………………………. 11", answerScore: 22))
        answersThree.append(Answer(name: "Sara J mass………………………………………………………….  9", answerScore: 18))

        answersFour.append(Answer(name: "Sinopsis/ Trama……………………………………………………. 47", answerScore: 94))
        answersFour.append(Answer(name: "Precio……………………………………………………………….. 20", answerScore: 40))
        answersFour.append(Answer(name: "Portada……………………………………………………………... 18", answerScore: 36))
        answersFour.append(Answer(name: "Que tenga buenas reseñas……………………………………… 15", answerScore: 30))
        
        answersFive.append(Answer(name: "Benito Taibo………………………………………………………… 49%", answerScore: 147))
        answersFive.append(Answer(name: "Juan Rulfo…………………………………………………………... 15%", answerScore: 45))
        answersFive.append(Answer(name: "Laura Esquivel……………………………………………………... 12%", answerScore: 36))
        answersFive.append(Answer(name: "Carlos fuentes………………………………………………………... 9%", answerScore: 27))
        answersFive.append(Answer(name: "José Emilio Pacheco………………………………………………... 8%", answerScore: 24))
        answersFive.append(Answer(name: "Octavio Paz…………………………………………………………. 7", answerScore: 21))
        
        answersSix.append(Answer(name: "Lord Voldemort……………………………………………………. 61", answerScore: 183))
        answersSix.append(Answer(name: "Coriolanus Snow…………………………………………………… 22", answerScore: 66))
        answersSix.append(Answer(name: "Jonathan Morgenstern / Sebastian Verlac…………………… 17", answerScore: 51))
        
        
        Game.share.questions.append(Question(name: "¿Qué cosa/situación te puede distraer al momento de leer?", answers: answersOne))
        Game.share.questions.append(Question(name: "Menciona 1 adaptación cinematográfica de un libro/saga", answers: answersTwo))
        Game.share.questions.append(Question(name: "Menciona un autor que escriba literatura juvenil", answers: answersThree))
        Game.share.questions.append(Question(name: "¿Qué tomas en cuenta al momento de comprar un libro?", answers: answersFour))
        Game.share.questions.append(Question(name: "Menciona a un escritor mexicano", answers: answersFive))
        Game.share.questions.append(Question(name: "Menciona un villano de un libro juvenil", answers: answersSix))
        
        
 
        
        Game.share.teams.append(redTeam)
        Game.share.teams.append(blueTeam)


        
//        self.window = UIWindow(frame: UIScreen.main.bounds)
//        let viewController = ViewController(nibName: "ViewController", bundle: Bundle.main)
//        let navigationController = UINavigationController(rootViewController: viewController)
//        self.window?.rootViewController = navigationController
//        self.window?.makeKeyAndVisible()
//        
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

