//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView3: UIImageView!
    @IBOutlet weak var diceImageView4: UIImageView!
    @IBOutlet weak var diceImageView5: UIImageView!
    @IBOutlet weak var diceImageView6: UIImageView!
    @IBOutlet weak var stackTop: UIStackView!
    @IBOutlet weak var stackBottom: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stackTop.isHidden = true
        stackBottom.isHidden = true
        diceImageView1.isHidden = false
        diceImageView2.isHidden = false
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let diceFaces = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour") ,#imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        diceImageView1.image = diceFaces.randomElement()
        diceImageView2.image = diceFaces.randomElement()
        diceImageView3.image = diceFaces.randomElement()
        diceImageView4.image = diceFaces.randomElement()
        diceImageView5.image = diceFaces.randomElement()
        diceImageView6.image = diceFaces.randomElement()
    }
    
    @IBAction func menuButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToMenu", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToMenu" {
            let destinationVC = segue.destination as! MenuViewController
            destinationVC.mainVC = self
        }
    }
    
    func hideDices(dices: Int) {
        switch dices {
        case 1:
            stackTop.isHidden = true
            stackBottom.isHidden = true
            diceImageView1.isHidden = false
            diceImageView2.isHidden = true
        case 2:
            stackTop.isHidden = true
            stackBottom.isHidden = true
            diceImageView1.isHidden = false
            diceImageView2.isHidden = false
        case 3:
            stackTop.isHidden = false
            diceImageView3.isHidden = false
            diceImageView4.isHidden = true
            stackBottom.isHidden = true
            diceImageView1.isHidden = false
            diceImageView2.isHidden = false
        case 4:
            stackTop.isHidden = false
            diceImageView3.isHidden = false
            diceImageView4.isHidden = false
            stackBottom.isHidden = true
            diceImageView1.isHidden = false
            diceImageView2.isHidden = false
        case 5:
            stackTop.isHidden = false
            diceImageView3.isHidden = false
            diceImageView4.isHidden = false
            stackBottom.isHidden = false
            diceImageView5.isHidden = false
            diceImageView6.isHidden = true
            diceImageView1.isHidden = false
            diceImageView2.isHidden = false
        case 6:
            stackTop.isHidden = false
            diceImageView3.isHidden = false
            diceImageView4.isHidden = false
            stackBottom.isHidden = false
            diceImageView5.isHidden = false
            diceImageView6.isHidden = false
            diceImageView1.isHidden = false
            diceImageView2.isHidden = false
        default:
            stackTop.isHidden = true
            stackBottom.isHidden = true
            diceImageView1.isHidden = false
            diceImageView2.isHidden = false
        }
    }
}

