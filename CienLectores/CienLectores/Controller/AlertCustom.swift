//
//  AlertCustom.swift
//  CienLectores
//
//  Created by Ruth Meriba Torres on 12/10/19.
//  Copyright © 2019 Ruth Meriba Torres. All rights reserved.
//
import UIKit
protocol AlertCustomDelegate: class {
    func selectViewController()
    func selectOk()
}
class AlertCustom: UIViewController {
    
    @IBOutlet weak var errorMessage: UILabel!
    @IBOutlet weak var viewContent: UIView!
    @IBOutlet weak var viewAlert: UIView!
    @IBOutlet weak var btnOK: UIButton!
    
    weak var delegate: AlertCustomDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //self.errorMessage.text = String(ViewController.ErrorCount.errorCount)
        self.showErrorCount()
        //self.viewContent.layer.borderWidth = 8
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.selectViewContent(_:)))
        self.viewContent.addGestureRecognizer(tapGesture)
        self.viewAlert.layer.cornerRadius = 8
        self.viewAlert.layer.borderWidth = 1
        self.btnOK.setConreRadio()
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.delegate?.selectViewController()
    }
    @objc func selectViewContent(_ sender: UITapGestureRecognizer) {
        self.delegate?.selectViewController()
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func selectOk(_ sender: UIButton) {
        self.delegate?.selectOk()
        self.dismiss(animated: true, completion: nil)

    }
    func showErrorCount() {
        switch ViewController.ErrorCount.errorCount {
        case 1:
            self.errorMessage.text = "X"
        case 2:
            self.errorMessage.text = "X X"
        case 3:
            self.errorMessage.text = "X X X"
        default:
            self.errorMessage.text = "X"
        }
    }
}
