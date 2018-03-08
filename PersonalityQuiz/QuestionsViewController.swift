//
//  QuestionsViewController.swift
//  PersonalityQuiz
//
//  Created by Charles Choi on 3/5/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {

    
    var questionIndex = 0
    var questions: [Question] = [
        Question(text: "Which food do you like the most?",
                 type: .single,
                 answers: [
                    Answer(text: "Steak", type: .dog),
                    Answer(text: "Fish", type: .cat),
                    Answer(text: "Carrot", type: .rabbit),
                    Answer(text: "Lettuce", type: .turtle),
                    ]),
        
        
        Question(text: "Which activities do you like the most?",
                 type: .multiple,
                 answers: [
                    Answer(text: "Swimming", type: .dog),
                    Answer(text: "Sleeping", type: .cat),
                    Answer(text: "Cuddling", type: .rabbit),
                    Answer(text: "Eating", type: .turtle),
                    ]),
        
        
        Question(text: "How much do you enjoy car rides?",
                 type: .ranged,
                 answers: [
                    Answer(text: "I love them", type: .dog),
                    Answer(text: "I dislike them", type: .cat),
                    Answer(text: "I get a little nervous", type: .rabbit),
                    Answer(text: "I barley notice them", type: .turtle),
                    ])
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

}
}
