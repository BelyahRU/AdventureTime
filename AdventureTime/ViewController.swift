//
//  ViewController.swift
//  AdventureTime
//
//  Created by Александр Андреев on 16.04.2023.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var firstChoice: UIButton!
    @IBOutlet weak var secondChoice: UIButton!
    
    var story = Adventure()
    
    override func viewDidLoad() {
        firstChoice.setTitle(story.storiesArarray[0].choice1, for: .normal)
        secondChoice.setTitle(story.storiesArarray[0].choice2, for: .normal)
        storyLabel.text = story.storiesArarray[0].title
    }
    
    @IBAction func choiceButton(_ sender: UIButton) {
        var currentStory = story.currentStory
        var answer: Int
        if sender == firstChoice {
            answer = 1
        } else {
            answer = 2
        }
        story.updateStory(answer)
        updateUI(currentStory)
        
    }
    
    func updateUI(_ currentStory: Int){
        firstChoice.setTitle(story.storiesArarray[currentStory].choice1, for: .normal)
        secondChoice.setTitle(story.storiesArarray[currentStory].choice2, for: .normal)
        storyLabel.text = story.storiesArarray[currentStory].title
    }
    
}

