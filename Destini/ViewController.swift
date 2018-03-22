//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    @IBOutlet weak var storyTextView: UILabel!
    
    var currentStory : Story?
    let datasource = StoryDatasource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentStory = datasource.firstStory
        updateView(story: currentStory!)
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        if let story = currentStory {
            if sender.tag == 1 {
                currentStory = story.answer1?.nextStory
            } else {
                currentStory = story.answer2?.nextStory
            }
            
            updateView(story: currentStory!)
        }
    }
    
    func updateView(story :  Story) {
        storyTextView.text = story.text
        dealWithButton(button: topButton, text: story.answer1?.text)
        dealWithButton(button: bottomButton, text: story.answer2?.text)
    }
    
    func dealWithButton(button : UIButton, text  : String?) {
        if let text = text {
            button.isHidden = false
            button.setTitle(text, for: .normal)
        } else {
            button.isHidden = true
            showAlert()
        }
    }

    func startOver() {
        currentStory = datasource.firstStory
        updateView(story: currentStory!)
    }
    
    func showAlert() {
        let controller =  UIAlertController(title: "End", message: "You,ve reached to the end of the story. You're game have been started at the beggining", preferredStyle: .alert)
        controller.addAction(UIAlertAction(title: "Go on", style: .default) { _ in self.startOver()})
        self.present(controller, animated: true, completion: nil)
    }
}

