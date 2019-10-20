//
//  MainViewController.swift
//  CienLectores
//
//  Created by Ruth Meriba Torres on 15/10/19.
//  Copyright © 2019 Ruth Meriba Torres. All rights reserved.
//
import UIKit
class MainViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let viewController = ViewController(nibName: "ViewController", bundle: Bundle.main)
        self.navigationController?.pushViewController(viewController, animated: true)
    }

}
