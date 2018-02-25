//
//  ViewController.swift
//  Dicee
//
//  Created by Nada Dawoud on 2/8/18.
//  Copyright © 2018 Mobile Apps Kitchen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstDiceImageView: UIImageView!
    
    @IBOutlet weak var secondDiceImageView: UIImageView!
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomizeDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        randomizeDiceImages()
    }
    
    func randomizeDiceImages() {
        let randomFirstDiceIndex = Int(arc4random_uniform(6))
        let randomSecondDiceIndex = Int(arc4random_uniform(6))
        
        firstDiceImageView.image = UIImage(named: diceArray[randomFirstDiceIndex])
        secondDiceImageView.image = UIImage(named: diceArray[randomSecondDiceIndex])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomizeDiceImages()
    }
}

