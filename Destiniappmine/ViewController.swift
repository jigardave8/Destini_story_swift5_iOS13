//
//  ViewController.swift
//  Destiniappmine
//
//  Created by jigar on 22/05/19.
//  Copyright © 2019 jigar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let story1 = "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\". "
    let answer1a = "I\'ll hop in. Thanks for the help!"
    let answer1b = "Better ask him if he\'s a murderer first."
    
    
    let story2 = "He nods slowly, unphased by the question."
    let answer2a = "At least he\'s honest. I\'ll climb in."
    let answer2b = "Wait, I know how to change a tire."
    
    let story3 = "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box."
    let answer3a = "I love Elton John! Hand him the cassette tape."
    let answer3b = "It\'s him or me! You take the knife and stab him."
    
    let story4 = "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?"
    let story5 = "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in."
    let story6 = "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""

    
    @IBOutlet weak var topButton: UIButton!
    
    @IBOutlet weak var bottomButtom: UIButton!
    
    @IBOutlet weak var storyTextView: UITextView!
    
    
    @IBOutlet weak var restartButton: UIButton!
    
    var _storyIndex : Int =  1

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        /*for img*/
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "shadowknight.jpg")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)

        restart()
    
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
    
       /*sudo code if topButton was press{
            then we want to change the storyTextView to story3
            change the topButton title to answer3a
            change the bottomButton title to answer3b
 */
        
        if sender.tag == 1 && _storyIndex == 1
            /* or          if sender.tag == 1 && (_storyIndex == 1 || _storyIndex == 2)
*/
         {
            storyTextView.text = story3
            topButton.setTitle(answer3a, for: .normal)
            bottomButtom.setTitle(answer3b, for: .normal)
            _storyIndex = 3
            }
        else if sender.tag == 2 && _storyIndex == 1 {
            storyTextView.text = story2
            topButton.setTitle(answer2a, for: .normal)
            bottomButtom.setTitle(answer2b, for: .normal)
            _storyIndex = 2
            }
            else if sender.tag == 1 && _storyIndex == 3{
            storyTextView.text = story6
            topButton.isHidden = true
            bottomButtom.isHidden = true
            _storyIndex = 6

            
            }
            else if sender.tag == 2 && _storyIndex == 3 {
            storyTextView.text = story5
            topButton.isHidden = true
            bottomButtom.isHidden = true
            _storyIndex = 5

            
            }
            /* If either statement is used in first line for tag 1  then donot write this code */
             else if sender.tag == 1 && _storyIndex == 2{
            storyTextView.text = story3
            topButton.setTitle(answer3a, for: .normal)
            bottomButtom.setTitle(answer3b, for: .normal)
            _storyIndex = 3
             }
            else if sender.tag == 2 && _storyIndex == 2{
            storyTextView.text = story4
            topButton.isHidden = true
            bottomButtom.isHidden = true
            _storyIndex = 4
            }
        
        if _storyIndex == 4 || _storyIndex == 5 || _storyIndex == 6{
            restartButton.isHidden = false
        }
        }
    
    
    @IBAction func restartButton(_ sender: UIButton) {
        restart()
    }
    
    func restart(){
        restartButton.isHidden = true
        _storyIndex = 1
        storyTextView.text = story1
        topButton.setTitle(answer1a, for: .normal)
        bottomButtom.setTitle(answer1b, for: .normal)
        topButton.isHidden = false
        bottomButtom.isHidden = false
    }
}
    
    
    





