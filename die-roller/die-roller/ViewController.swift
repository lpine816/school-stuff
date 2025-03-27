//
//  ViewController.swift
//  die-roller
//
//  Created by user234742 on 3/27/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var dieImage: UIImageView!
    @IBOutlet weak var dieResult: UILabel!
    @IBAction func rollDie(_sender: Any){
        let randomNumber = arc4random_uniform(6) + 1
        self.dieResult.text = String(randomNumber)
        switch randomNumber {
        case 1:
            self.dieImage.image = UIImage(named: "dice-1")
        case 2:
            self.dieImage.image = UIImage(named: "dice-2")
        case 3:
            self.dieImage.image = UIImage(named: "dice-3")
        case 4:
            self.dieImage.image = UIImage(named: "dice-4")
        case 5:
            self.dieImage.image = UIImage(named: "dice-5")
        case 6:
            self.dieImage.image = UIImage(named: "dice-6")
        default:
            return
        }
    }
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
}

