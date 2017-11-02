//
//  ViewController.swift
//  TicTacToe
//
//  Created by McCabe Tonna on 11/1/17.
//  Copyright © 2017 Wambl, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gameBoard: UIStackView!
    
    var tile: [[Int]] = [[0,0,0],[0,0,0],[0,0,0]]
    var user : Bool = true;
    var winner = 0
    @IBAction func buttonPressed(_ sender: UIButton) {
    
  
       
        
        switch sender.tag {
        case 0:
            
            if (tile[0][0] == 0) {
                if (user){
                    sender.backgroundColor = UIColor.red
                    tile[0][0] = 1
    
                    user = !user
                    print(tile[0])
                    print("user:", user)
                }
              else if (!user) {
                    sender.backgroundColor = UIColor.blue
                    tile[0][0] = 2
                     user = !user
                    
                
                }
            else {break}
            }
      
        case 1:
            
            if (tile[0][1] == 0) {
                if (user){
                    sender.backgroundColor = UIColor.red
                    tile[0][1] = 1
                    user = !user
                    print(tile[0])
                    
                    print("user:", user)
                }
                else if (!user) {
                    sender.backgroundColor = UIColor.blue
                    tile[0][1] = 2
                    user = !user
                    
                    
                }
                else {break}
            }
 
        case 2:
        
            
            if (tile[0][2] == 0) {
                if (user){
                    sender.backgroundColor = UIColor.red
                    tile[0][2] = 1
                    user = !user
                    print(tile)
                    print("user:", user)
                }
                else if (!user) {
                    sender.backgroundColor = UIColor.blue
                    tile[0][2] = 2
                    user = !user
                    
                    
                }
                else {break}
            }
            
            
            print(tile)
            print("user:", user)
            break
            
        case 3:
          
            
            if (tile[1][0] == 0) {
                if (user){
                    sender.backgroundColor = UIColor.red
                    tile[1][0] = 1
                    user = !user
                    print(tile)
                    print("user:", user)
                }
                else if (!user) {
                    sender.backgroundColor = UIColor.blue
                    tile[1][0] = 2
                    user = !user
                    
                    
                }
                else {break}
            }
            
            
            print(tile)
            print("user:", user)
            break
            
            
        case 4:
            
            if (tile[1][1] == 0) {
                if (user){
                    sender.backgroundColor = UIColor.red
                    tile[1][1] = 1
                    user = !user
                    print(tile)
                    print("user:", user)
                }
                else if (!user) {
                    sender.backgroundColor = UIColor.blue
                    tile[1][1] = 2
                    user = !user
                    print(tile)
                    print("user:", user)
                    
                }
                else {break}
            }
            
            
            print(tile)
            print("user:", user)
            break
            
        case 5:
            if (tile[1][2] == 0) {
                if (user){
                    sender.backgroundColor = UIColor.red
                    tile[1][2] = 1
                    user = !user
                    print(tile)
                    print("user:", user)
                }
                else if (!user) {
                    sender.backgroundColor = UIColor.blue
                    tile[1][2] = 2
                    user = !user
                    print(tile)
                    print("user:", user)
                    
                }
                else {break}
            }
            
            
            print(tile)
            print("user:", user)
            break
        case 6:
            
            if (tile[2][0] == 0) {
                if (user){
                    sender.backgroundColor = UIColor.red
                    tile[2][0] = 1
                    user = !user
                    print(tile)
                    print("user:", user)
                }
                else if (!user) {
                    sender.backgroundColor = UIColor.blue
                    tile[2][0] = 2
                    user = !user
                    
                    
                }
                else {break}
            }
            
          
       
            break
        case 7:
            
            if (tile[2][1] == 0) {
                if (user){
                    sender.backgroundColor = UIColor.red
                    tile[2][1] = 1
                    user = !user
                    print(tile)
                    print("user:", user)
                }
                else if (!user) {
                    sender.backgroundColor = UIColor.blue
                    tile[2][1] = 2
                    user = !user
                    
                    
                }
                else {break}
            }
            
           
            break
        case 8:
            
            if (tile[2][2] == 0) {
                if (user){
                    sender.backgroundColor = UIColor.red
                    tile[2][2] = 1
                    user = !user
                    print(tile)
                    print("user:", user)
                }
                else if (!user) {
                    sender.backgroundColor = UIColor.blue
                    tile[2][2] = 2
                    user = !user
                    
                    
                }
                else {break}
            }
            
          
            break
            
        default:
            print("broken")
        }
        updateUI()
    }
    
    
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
//        let tmpButton = self.view.viewWithTag(0) as! UIButton
//        tmpButton.backgroundColor = UIColor.white
        
        for stackview in gameBoard.subviews as! [UIStackView] {
            for button in stackview.subviews as! [UIButton] {
                button.backgroundColor = .white
            }
        }
        print("reset button pressed")
        tile = [[0,0,0],[0,0,0],[0,0,0]]
         user = true;
        winner = 0
        updateUI()
       
    }
    @IBOutlet weak var winnerLabel: UILabel!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
               updateUI()
        // Do any additional setup after loading the view, typically from a nib.
    }
  
    
    func updateUI() {
        
        if (tile[0] == [1,1,1] || tile[1] == [1,1,1] || tile[2] == [1,1,1] ){
            print("player 1 wins")
        }
        else if ((tile[0][0] == 1 && tile[1][0] == 1 && tile[2][0] == 1)||(tile[0][1] == 1 && tile[1][1] == 1 && tile[2][1] == 1)||(tile[0][2] == 1 && tile[1][2] == 1 && tile[2][2] == 1) ){
         print("player 1 wins")
        }
        else if ((tile[0][0] == 1 && tile[1][1] == 1 && tile[2][2] == 1 )||(tile[0][2] == 1 && tile[1][1] == 1 && tile[0][2] == 1 )) {
            print("player 1 wins")
            
        }
        //need to implement player 2 and reset...
    
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

