//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Rayan Taj on 22/10/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var computerChoice: UIImageView!
    @IBOutlet weak var myChoiceStr: UILabel!
    var choice = "none"
    
    
    
    @IBAction func choosedRock(_ sender: UIButton) {
        
        choice = "rock"

        myChoiceStr.text = choice
    }
    
    @IBAction func choosedPaper(_ sender: Any) {
        choice = "paper"
        myChoiceStr.text = choice
    }
    
    @IBAction func choosedScissors(_ sender: Any) {
        
        choice = "scissors"
        myChoiceStr.text = choice
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func playButton(_ sender: Any) {
        
        let randomComputerNumber = Int.random(in: 1...3)
        
        var computerChoiceStr = "none"
        
        switch randomComputerNumber {
            
        case 1 :
            computerChoiceStr = "rock"
            computerChoice.image = UIImage(named: "2")
        case 2 :
            computerChoiceStr = "paper"
            computerChoice.image = UIImage(named: "1")
        case 3 :
            computerChoiceStr = "scissors"
            computerChoice.image = UIImage(named: "3")
        default : break
            
        }
        
        
       
        
        var alertMsg = "Computer : \(computerChoiceStr) ,    you : \(choice)"

        
        if computerChoiceStr == "rock" && choice == "paper" {
            alertMsg += "   YOU WIN!"
        } else  if computerChoiceStr == "rock" && choice == "scissors" {
            alertMsg += "   YOU LOOSE!"
        }else  if computerChoiceStr == "paper" && choice == "rock" {
            alertMsg += "   YOU LOOSE!"
        } else  if computerChoiceStr == "paper" && choice == "scissors" {
            alertMsg += "   YOU WIN!"
        } else  if computerChoiceStr == "scissors" && choice == "rock" {
            alertMsg += "   YOU WIN!"
        } else  if computerChoiceStr == "scissors" && choice == "paper" {
            alertMsg += "   YOU LOOSE!"
        } else{
            alertMsg += "  DRAW!"
        }
        
        do {
            sleep(2)
        }
        var dialogMessage = UIAlertController(title: "Rock-Paper-Scisors", message: alertMsg, preferredStyle: .alert)
        
        // Create OK button with action handler
        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            print("Ok button tapped")
         })
        
        //Add OK button to a dialog message
        dialogMessage.addAction(ok)
        // Present Alert to
        self.present(dialogMessage, animated: true, completion: nil)
        
        
    }
    
}

