//
//  StoryDatasource.swift
//  Destini
//
//  Created by Emanuel on 22/3/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

class StoryDatasource {
    
    let firstStory : Story
    
    init() {
        
        let story6 = Story(text : "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\"", answer1 : nil,answer2 : nil)
        
        let story5 = Story(text : "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.", answer1: nil,answer2 : nil)
        
        let story4 = Story(text : "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?", answer1 : nil,answer2 : nil)
        
        //Story 3
        let answer3a = Answer(text : "I love Elton John! Hand him the cassette tape.", story : story6)
        let answer3b = Answer(text : "It\'s him or me! You take the knife and stab him.", story : story5)
        let story3 = Story(text : "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
                           answer1 : answer3a,
                           answer2 : answer3b)
        
        //Story 2
        let answer2a = Answer(text : "At least he\'s honest. I\'ll climb in.", story : story3)
        let answer2b = Answer(text : "Wait, I know how to change a tire.", story : story4)
        let story2 = Story(text : "He nods slowly, unphased by the question.",
                           answer1 : answer2a,
                           answer2 : answer2b)
        
        
        //Story 1
        let answer1a = Answer(text : "I\'ll hop in. Thanks for the help!", story : story3)
        let answer1b = Answer(text : "Well, I don\'t have many options. Better ask him if he\'s a murderer first.", story : story2)
        
        firstStory = Story(text : "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\".",
                            answer1 : answer1a,
                            answer2 : answer1b)
        
    }
}
