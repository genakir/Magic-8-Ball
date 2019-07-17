//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Kiryushatov, Gennadii on 6/7/19.
//  Copyright © 2019 Gennadii Kiryushatov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber = 0

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
        
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        newBallImage()
    
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        newBallImage()
    
    }
    
    func newBallImage() {
        
        randomBallNumber = Int.random(in: 0...4)
        imageView.image = UIImage.init(named: ballArray[randomBallNumber])
        
    }
    
}

