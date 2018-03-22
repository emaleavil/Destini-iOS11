//
//  AppDelegate.swift
//  Destini
//
//  Created by Emanuel on 22/3/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

class Story {
    let text : String
    let answer1 : Answer?
    let answer2 : Answer?

    init(text : String, answer1 : Answer?, answer2: Answer?) {
        self.text = text
        self.answer1 = answer1
        self.answer2 = answer2
    }
}
