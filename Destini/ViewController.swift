//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Our strings
    let story1 = "\t\t\t\t\tStory - 1"
    let answer1a = "Answer - 1(a)"
    let answer1b = "Answer - 1(b)"
    
    
    let story2 = "\t\t\t\t\tStory - 2"
    let answer2a = "Answer - 2(a)"
    let answer2b = "Answer - 2(b)"
    
    let story3 = "\t\t\t\t\tStory - 3"
    let answer3a = "Answer - 3(a)"
    let answer3b = "Answer - 3(b)"
    
    let story4 = "\t\t\t\t\tStory - 4"
    
    let story5 = "\t\t\t\t\tStory - 5"
    
    let story6 = "\t\t\t\t\tStory - 6"
        
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    @IBOutlet weak var ResetButton: UIButton!
        
    // TODO Step 5: Initialise instance variables here
    
    var storyIndex = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        
        storyTextView.text = story1
        topButton.setTitle(answer1a, for: .normal)
        bottomButton.setTitle(answer1b, for: .normal)
        
        ResetButton.isHidden = true
        
    }
    
    /*--------------------------------------------------*/

    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        // TODO Step 4: Write an IF-Statement to update the views
        
        /*
            if topButton was pressed {
            
            change the storyTextView to story3
            change the topButton title to answer 3a
            change the bottomButton title to answer 3b

        }
        */
        
        if sender.tag == 1 && storyIndex == 1 {
            
            storyTextView.text = story3
            topButton.setTitle(answer3a, for: .normal)
            bottomButton.setTitle(answer3b, for: .normal)
            storyIndex = 3
            
        }
        
        // TODO Step 6: Modify the IF-Statement to complete the story

        else if sender.tag == 2 && storyIndex == 1 {
            
            storyTextView.text = story2
            topButton.setTitle(answer2a, for: .normal)
            bottomButton.setTitle(answer2b, for: .normal)
            storyIndex = 2
            
        }
        
        else if sender.tag == 1 && storyIndex == 3 {
            
            storyTextView.text = story6
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 6
    
    }
    
        else if sender.tag == 2 && storyIndex == 3 {
            
            storyTextView.text = story5
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 5
            
        }
        
        else if sender.tag == 1 && storyIndex == 2 {
            
            storyTextView.text = story3
            topButton.setTitle(answer3a, for: .normal)
            bottomButton.setTitle(answer3b, for: .normal)
            storyIndex = 3
            
        }

        else if sender.tag == 2 && storyIndex == 2 {
            
            storyTextView.text = story4
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 4
            
        }
        
        else if sender.tag == 1 && storyIndex == 3 {
            
            storyTextView.text = story6
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 6
            
        }
            
        else if sender.tag == 2 && storyIndex == 3 {
            
            storyTextView.text = story5
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 5
            
        }
        
        if storyIndex == 6 || storyIndex == 5 || storyIndex == 4 {
            
            ResetButton.isHidden = false
            
        }
        
    }
    
    @IBAction func ResetPressed(_ sender: UIButton) {
        
        storyIndex = 1
        
        storyTextView.text = story1
        topButton.setTitle(answer1a, for: .normal)
        bottomButton.setTitle(answer1b, for: .normal)
        
        topButton.isHidden = false
        bottomButton.isHidden = false
        
    }
    
}

