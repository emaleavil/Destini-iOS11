//
//  Answer.swift
//  Destini
//
//  Created by Emanuel on 22/3/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

class Answer {
    
    let text : String
    let nextStory : Story?
    
    init(text : String, story : Story?) {
        self.text = text
        self.nextStory = story
    }
}
