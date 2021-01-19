//
//  MenuViewController.swift
//  Tira2Dados
//
//  Created by Emilio José Ojeda Cano on 19/01/2021.
//  Copyright © 2021 London App Brewery. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    var mainVC: ViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func selectedDices(_ sender: UISlider) {
        mainVC?.hideDices(dices: Int(sender.value))
        print(sender.value)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
