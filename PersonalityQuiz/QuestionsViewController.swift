//
//  QuestionsViewController.swift
//  PersonalityQuiz
//
//  Created by Charles Choi on 3/5/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {

    @IBOutlet weak var singleStackedView: UIStackView!
    @IBOutlet weak var multipleStackedView: UIStackView!
    @IBOutlet weak var rangedStackedView: UIStackView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    //---------------------------------------------------
    @IBOutlet weak var button1SingleStacked: UIButton!
    @IBOutlet weak var button2SingleStacked: UIButton!
    @IBOutlet weak var button3SingleStacked: UIButton!
    @IBOutlet weak var button4SingleStacked: UIButton!
    //---------------------------------------------------
    @IBOutlet weak var label1Multiple: UILabel!
    @IBOutlet weak var label2Multiple: UILabel!
    @IBOutlet weak var label3Multiple: UILabel!
    @IBOutlet weak var label4Multiple: UILabel!
    @IBOutlet weak var switch1Multiple: UISwitch!
    @IBOutlet weak var switch2Multiple: UISwitch!
    @IBOutlet weak var switch3Multiple: UISwitch!
    @IBOutlet weak var switch4Multiple: UISwitch!
    @IBOutlet weak var buttonSubmitMultiple: UIButton!
    //---------------------------------------------------
    @IBOutlet weak var label1Ranged: UILabel!
    @IBOutlet weak var label2Ranged: UILabel!
    @IBOutlet weak var sliderRanged: UISlider!
    //---------------------------------------------------
    
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

        updateUI()
    }
        func updateUI() {
            
            singleStackedView.isHidden = true
            multipleStackedView.isHidden = true
            rangedStackedView.isHidden = true
            
            let currentQuestion = questions[questionIndex]
            let currentAnswers = currentQuestion.answers
            let totalProgress = Float(questionIndex)/Float(questions.count)
            
            navigationItem.title = "Quesiton #\(questionIndex + 1)"
            questionLabel.text = currentQuestion.text
            progressView.setProgress(totalProgress, animated: true)
            
            switch currentQuestion.type {
            case .single:
                updateSingleStackedView(using: currentAnswers)
            case .multiple:
                updateMultipleStack(using: currentAnswers)
            case .ranged:
                updateRangedStack(using: currentAnswers)
            }
        }
        
        func updateSingleStackedView(using answers: [Answer]) {
            singleStackedView.isHidden = false
            button1SingleStacked.setTitle(answers[0].text, for: .normal)
            button2SingleStacked.setTitle(answers[1].text, for: .normal)
            button3SingleStacked.setTitle(answers[2].text, for: .normal)
            button4SingleStacked.setTitle(answers[3].text, for: .normal)
        }
        
        func updateMultipleStack(using answers: [Answer]) {
           multipleStackedView.isHidden = false
            label1Multiple.text = answers[0].text
            label2Multiple.text = answers[1].text
            label3Multiple.text = answers[2].text
            label4Multiple.text = answers[3].text
        }
        func updateRangedStack(using answers: [Answer]) {
            rangedStackedView.isHidden = false
            label1Ranged.text = answers.first?.text
            label2Ranged.text = answers.last?.text
        }
    func nextQuestion() {
        questionIndex += 1
        if questionIndex < questions.count {
            updateUI()
        } else {
            performSegue(withIdentifier: "resultSegue", sender: nil)
        }
    }
        
}



