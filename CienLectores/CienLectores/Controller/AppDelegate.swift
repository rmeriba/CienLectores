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
        var answersSeven: [Answer] = []
        var answersEight: [Answer] = []
        var answersNine: [Answer] = []
        var answersTen: [Answer] = []
        var answersEleven: [Answer] = []
        
        answersOne.append(Answer(name: "Orgullo y Prejuicio……………………………………………....  28%", answerScore: 28))
        answersOne.append(Answer(name: "Eleanor & Park…………………………………………………... 19%", answerScore: 19))
        answersOne.append(Answer(name: "Yo antes de ti…………………………………………………...... 14%", answerScore: 14))
        answersOne.append(Answer(name: "Romeo y Julieta…………………………………………………... 11%", answerScore: 11))
        answersOne.append(Answer(name: "A todos los chicos de los que me enamoré………………….. 10%", answerScore: 10))
        answersOne.append(Answer(name: "Aristóteles y Dante descubren los secretos del universo……. 9%", answerScore: 09))
        answersOne.append(Answer(name: "The Notebook (Diario de una pasión)…………………………. 9%", answerScore: 09))
        
        answersTwo.append(Answer(name: "Celular…………………………………………………………….... 33%", answerScore: 33))
        answersTwo.append(Answer(name: "Ruido……………………………………………..………………… 29%", answerScore: 29))
        answersTwo.append(Answer(name: "Personas platicando/ Que me hablen……………………… 25%", answerScore: 25))
        answersTwo.append(Answer(name: "Televisión……………………………………………..…………….. 08%", answerScore: 08))
        answersTwo.append(Answer(name: "Tareas / Obligaciones………………………………………… 05%", answerScore: 05))

        
        answersThree.append(Answer(name: "John Green………………………………………………………… 33%", answerScore: 33))
        answersThree.append(Answer(name: "J.K Rowling……………………………………………………....  13%", answerScore: 13))
        answersThree.append(Answer(name: "Benito Taibo…………………………………………………….... 13%", answerScore: 13))
        answersThree.append(Answer(name: "Cassandra Clare…………………………………………………. 9%", answerScore: 09))
        answersThree.append(Answer(name: "Rick Riordan………………………………………………………….  8%", answerScore: 08))
        answersThree.append(Answer(name: "Sara J mass………………………………………………………….  6%", answerScore: 06))
        answersThree.append(Answer(name: "Rainbow Rowell……………………………………..……..…..... 6%", answerScore: 06))
        answersThree.append(Answer(name: "Claudia Ramirez…………………………………………………... 6%", answerScore: 06))
        answersThree.append(Answer(name: "Blue Jeans…………………………………………………………...  6%", answerScore: 06))
        
        answersFour.append(Answer(name: "Fa Orozco………………………………………………………….. 33%", answerScore: 33))
        answersFour.append(Answer(name: "Claudia Ramírez (Claureadbooks)…………………………… 27%", answerScore: 27))
        answersFour.append(Answer(name: "Alberto Villareal (Abriendolibros)…………………………… 12%", answerScore: 12))
        answersFour.append(Answer(name: "Mariana Gonzalez (Iamunbrokengirl)……………………. 10%", answerScore: 10))
        answersFour.append(Answer(name: "Isa Cantos (Crónicas de una merodeadora)………………… 9%", answerScore: 09))
        answersFour.append(Answer(name: "Raiza Revelles……………………………………………………… 9%", answerScore: 09))
                
        answersFive.append(Answer(name: "Benito Taibo………………………………………………………… 51%", answerScore: 51))
        answersFive.append(Answer(name: "Juan Rulfo…………………………………………………………... 11%", answerScore: 11))
        answersFive.append(Answer(name: "Laura Esquivel……………………………………………………... 10%", answerScore: 10))
        answersFive.append(Answer(name: "Gabriel Garcia Márquez (Es colombiano)…………………… 9%", answerScore: 09))
        answersFive.append(Answer(name: "Carlos fuentes………………………………………………………... 7%", answerScore: 07))
        answersFive.append(Answer(name: "José Emilio Pacheco………………………………………………... 6%", answerScore: 06))
        answersFive.append(Answer(name: "Octavio Paz…………………………………………………………. 6%", answerScore: 06))
        
        answersSix.append(Answer(name: "Lord Voldemort……………………………………………………. 61%", answerScore: 61))
        answersSix.append(Answer(name: "Coriolanus Snow…………………………………………………… 22%", answerScore: 22))
        answersSix.append(Answer(name: "Jonathan Morgenstern / Sebastian Verlac…………………… 17%", answerScore: 17))
        
        answersSeven.append(Answer(name: "Los Juegos del hambre…………………………………………... 41%", answerScore: 41))
        answersSeven.append(Answer(name: "Cazadores de Sombras………………………………………….  17%", answerScore: 17))
        answersSeven.append(Answer(name: "Orgullo y prejuicio………………………………………………… 12%", answerScore: 12))
        answersSeven.append(Answer(name: "Trono de Cristal…………………………………………………….. 11%", answerScore: 11))
        answersSeven.append(Answer(name: "Fangirl……………………………………………………………….. 7%", answerScore: 07))
        answersSeven.append(Answer(name: "Hija de Humo y Hueso……………………………………………. 6%", answerScore: 06))
        answersSeven.append(Answer(name: "Shatter Me………………………………………………………….. 6%", answerScore: 06))
        
        answersEight.append(Answer(name: "Harry Potter………………………………………………………. 42%", answerScore: 42))
        answersEight.append(Answer(name: "Los juegos del hambre…………………………………………. 18%", answerScore: 18))
        answersEight.append(Answer(name: "Divergente………………………………………………………... 12%", answerScore: 12))
        answersEight.append(Answer(name: "Las ventajas de ser invisible…………………………………..… 9%", answerScore: 09))
        answersEight.append(Answer(name: "Cazadores de sombras…………………………………………… 7%", answerScore: 07))
        answersEight.append(Answer(name: "El sol también es una estrella………………………………… 6%", answerScore: 06))
        answersEight.append(Answer(name: "Cementerio de animales………………………………………… 6%", answerScore: 06))
        
        answersNine.append(Answer(name: "Percy Jackson……………………………………………………... 50%", answerScore: 50))
        answersNine.append(Answer(name: "Crónicas Lunares…………………………………………………. 15%", answerScore: 15))
        answersNine.append(Answer(name: "La Selección……………………………………………………….. 15%", answerScore: 15))
        answersNine.append(Answer(name: "Beautiful Disaster……………………………………………… 10%", answerScore: 10))
        answersNine.append(Answer(name: "Temblor………………………………………………………………. 10%", answerScore: 10))
        
        answersTen.append(Answer(name: "Bajo la Misma Estrella………………………………………… 35%", answerScore: 35))
        answersTen.append(Answer(name: "Princesa Mecánica……………………………………………… 21%", answerScore: 21))
        answersTen.append(Answer(name: "La mecánica del Corazón……………………………………… 16%", answerScore: 16))
        answersTen.append(Answer(name: "Leal…………………………………………………………………... 14%", answerScore: 14))
        answersTen.append(Answer(name: "Yo antes de ti……………………………………………………….. 14%", answerScore: 14))
        
        
        answersEleven.append(Answer(name: "Sinopsis/ Trama……………………………………………………. 47%", answerScore: 47))
        answersEleven.append(Answer(name: "Precio……………………………………………………………….. 20%", answerScore: 20))
        answersEleven.append(Answer(name: "Portada……………………………………………………………... 18%", answerScore: 18))
        answersEleven.append(Answer(name: "Que tenga buenas reseñas……………………………………… 15%", answerScore: 15))
     
        
        Game.share.questions.append(Question(name: "Menciona el título de un libro de romance", answers: answersOne))
        Game.share.questions.append(Question(name: "¿Qué cosa/situación te puede distraer al momento de leer?", answers: answersTwo))
        Game.share.questions.append(Question(name: "Menciona un autor que escriba literatura juvenil", answers: answersThree))
        Game.share.questions.append(Question(name: "Menciona el nombre de un booktuber", answers: answersFour))
        Game.share.questions.append(Question(name: "Menciona a un escritor mexicano", answers: answersFive))
        Game.share.questions.append(Question(name: "Menciona un villano de un libro", answers: answersSix))
        Game.share.questions.append(Question(name: "Menciona un libro donde la protagonista sea una mujer", answers: answersSeven))
        Game.share.questions.append(Question(name: "Menciona 1 adaptación cinematográfica de un libro/saga", answers: answersEight))
        Game.share.questions.append(Question(name: "Libro que te gustaría que adaptaran a una serie de TV", answers: answersNine))
        Game.share.questions.append(Question(name: "Menciona un libro que te haya hecho llorar", answers: answersTen))
        Game.share.questions.append(Question(name: "¿Qué tomas en cuenta al momento de comprar un libro?", answers: answersEleven))
 
        
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

