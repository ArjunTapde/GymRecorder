//
//  musicPlayer2.swift
//  GymRecorder
//
//  Created by Personal Account on 9/11/19.
//  Copyright © 2019 Arjun Tapde SideProjects. All rights reserved.
//

import UIKit
import AVFoundation

class musicPlayer2: UIViewController {

    var audioPlayer2 = AVAudioPlayer()
    
    @IBAction func goBackButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        do
        {
            audioPlayer2 = try AVAudioPlayer(contentsOf: Bundle.main.url(forResource: "song", withExtension: "mp3")!)
            audioPlayer2.prepareToPlay()
            
            let audioSession = AVAudioSession.sharedInstance()
            
            do
            {
                try audioSession.setCategory(AVAudioSession.Category.playback)
            }
            catch
            {
                print(error)
            }
            
        }
        catch
        {
            print(error)
        }
        
    }
 
    @IBAction func playButton(_ sender: Any) {
        audioPlayer2.play()
    }
    
    @IBAction func pauseButton(_ sender: Any) {
        if audioPlayer2.isPlaying
        {
            audioPlayer2.pause()
        }
        else
        {
            audioPlayer2.play()
        }
    }
    
    @IBAction func restartButton(_ sender: Any) {
        if audioPlayer2.isPlaying
        {
            audioPlayer2.currentTime = 0
            audioPlayer2.play()
        }
        else
        {
            audioPlayer2.play()
        }
    }
    
    
    
    
    
    
}
