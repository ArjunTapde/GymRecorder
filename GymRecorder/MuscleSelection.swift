//
//  MuscleSelection.swift
//  GymRecorder
//
//  Created by Personal Account on 9/8/19.
//  Copyright © 2019 Arjun Tapde SideProjects. All rights reserved.
//

import UIKit

class MuscleSelection: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func goBackGraph(_ sender: Any) {
        performSegue(withIdentifier: "backSegue", sender: self)
    }
    
    
    @IBAction func goChestGraph(_ sender: Any) {
        performSegue(withIdentifier: "chestSegue", sender: self)
    }
    
    @IBAction func goLegGraph(_ sender: Any) {
        performSegue(withIdentifier: "legSegue", sender: self)
    }
    
    @IBAction func goArmGraph(_ sender: Any) {
        performSegue(withIdentifier: "armSegue", sender: self)
    }
    
    @IBAction func goMusicPlayer(_ sender: Any) {
        performSegue(withIdentifier: "musicSegue2", sender: self)

    }
    
    
    
    var finalName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = finalName
        
    
        
        
        
        
        
    }
}
