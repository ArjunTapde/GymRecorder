//
//  ViewController.swift
//  GymRecorder
//
//  Created by Personal Account on 9/8/19.
//  Copyright © 2019 Arjun Tapde SideProjects. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameText: UITextField!
    
    var nameTransfer = ""
    
    @IBAction func continueMuscleSelection(_ sender: Any)
    {
        self.nameTransfer = nameText.text!
        //hideKeyboard()
        performSegue(withIdentifier: "toMuscleSelection", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! MuscleSelection
        vc.finalName = self.nameTransfer
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameText.delegate = self
    }

    func hideKeyboard()
    {
        nameText.resignFirstResponder()
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("Return pressed")
        hideKeyboard()
        return true
    }
    
    
    
    
}

