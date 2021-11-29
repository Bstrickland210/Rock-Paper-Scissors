//
//  ViewController.swift
//  Rock, Paper, Scissors
//
//  Created by Bridger Strickland on 11/11/21.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var userImage: UIImageView!
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet weak var computerImage: UIImageView!
    
    var myChoice = 3
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rockButton(_ sender: Any)
    {
        var userChoice = "rock"
        userImage.image = UIImage(named: "rock")
        winnerDecide(yourAnswer: userChoice)
    }
    
    @IBAction func paperButton(_ sender: Any)
    {
        var userChoice = "paper"
        userImage.image = UIImage(named: "paper")
        winnerDecide(yourAnswer: userChoice)
    }
    
    @IBAction func scissorsButton(_ sender: Any)
    {
        var userChoice = "scissors"
        userImage.image = UIImage(named: "scissors")
        winnerDecide(yourAnswer: userChoice)
    }
    
    func winnerDecide(yourAnswer: String)
    {
        let randomNum = Int.random(in: 0...2)
        if randomNum == 0
        {
            computerImage.image = UIImage(named: "rock")
            
        }else if randomNum == 1
        {
            computerImage.image = UIImage(named: "paper")
        }else if randomNum == 2
        {
            computerImage.image = UIImage(named: "scissors")
        }else {computerImage.image = UIImage(named: "rock")}
       
        if yourAnswer == "rock"
        {
        myChoice = 1
    }else if yourAnswer == "paper"
    {
        myChoice = 2
    }else{
        myChoice = 4
}
        var winner = myChoice == randomNum ? "its a tie" : ((myChoice + 2) % 3) == randomNum ? "You Win" : "You Lose"
        winnerLabel.text = winner
    }
}
