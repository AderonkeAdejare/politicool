//
//  QuizController.swift
//  PolitiCute
//
//  Created by Apple on 8/1/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class QuizController: UIViewController {
        
        @IBOutlet weak var lblQuestion: UILabel!
        @IBOutlet weak var answer0: UIButton!
        @IBOutlet weak var answer1: UIButton!
        @IBOutlet weak var answer2: UIButton!
        @IBOutlet weak var answer3: UIButton!
        
        @IBOutlet weak var lblProcess: UILabel!
        
        struct Question {
            let question: String
            let answers: [String]
            let correctAnswer: Int
        }
        
        var questions: [Question] = [
            Question(
                question: "What are the two major parties of the U.S.A.?",
                answers: ["Green & Libertarian", "Democratic & Republican", "Green & Republican", "Libertarian & Democratic"],
                correctAnswer: 1),
            Question(
                question: "Whose party logo is an elephant?",
                answers: ["Republican", "Green", "Democratic", "Libertarian"],
                correctAnswer: 0),
            Question(
                question: "Which party believes that the Earth's physical resources are finite?",
                answers: ["Democratic", "Republican", "Libertarian", "Green"],
                correctAnswer: 3),
            Question(
                question: "This party believes that the government’s only responsibility, if any, should be protecting people from force and fraud.",
                answers: ["Republican", "Libertarian", "Green", "Democratic"],
                correctAnswer: 1),
            Question(
                question: "Which party advocates for civil rights of minorities?",
                answers: ["Libertarian", "Republican", "Democratic", "Green"],
                correctAnswer: 2),
            Question(
                question: "This party supports low taxes.",
                answers: ["Green", "Democratic", "Libertarian", "Republican"],
                correctAnswer: 3),
            Question(
                question: "Which party believes that every human being deserves a say in the decisions that affect their lives and not be subject to the will of another?",
                answers: ["Green", "Libertarian", "Republican", "Democratic"],
                correctAnswer: 0),
            Question(
                question: "This party believes that the existing justice system is seriously flawed.",
                answers: ["Democratic", "Green", "Libertarian", "Republican"],
                correctAnswer: 2),
            Question(
                question: "Which party supports social welfare programs like Medicaid and food stamps?",
                answers: ["Republican", "Democratic", "Green", "Libertarian"],
                correctAnswer: 1),
            Question(
                question: "This party aims to emphasize a commitment to free-market principles, civil rights, personal freedom, non-interventionism, peace and free trade.",
                answers: ["Libertarian", "Republican", "Democratic", "Green"],
                correctAnswer: 3),
        ]
        
        var currentQuestion: Question?
        var currentQuestionPos = 0
        var noCorrect = 0
        override func viewDidLoad() {
            super.viewDidLoad()
            currentQuestion = questions[0]
            setQuestion()
            setGradientBackground()
            // Do any additional setup after loading the view.
        }
        
        @IBAction func submitAnswer0(_ sender: Any) {
            checkAnswer(idx: 0)
        }
        @IBAction func submitAnswer1(_ sender: Any) {
            checkAnswer(idx: 1)
        }
        @IBAction func submitAnswer2(_ sender: Any) {
            checkAnswer(idx: 2)
        }
        @IBAction func submitAnswer3(_ sender: Any) {
            checkAnswer(idx: 3)
        }
        
        func checkAnswer(idx: Int) {
            if(idx == currentQuestion!.correctAnswer) {
                noCorrect += 1
            }
            loadNextQuestion()
        }
        
        func loadNextQuestion() {
            // Show next question
            if(currentQuestionPos + 1 < questions.count) {
                currentQuestionPos += 1
                currentQuestion = questions[currentQuestionPos]
                setQuestion()
                // If there are no more questions show the results
            } else {
                performSegue(withIdentifier: "sgShowResults", sender: nil)
            }
            
        }
        
        // Set labels and buttions for the current question
        func setQuestion() {
            lblQuestion.text = currentQuestion!.question
            answer0.setTitle(currentQuestion!.answers[0], for: .normal)
            answer1.setTitle(currentQuestion!.answers[1], for: .normal)
            answer2.setTitle(currentQuestion!.answers[2], for: .normal)
            answer3.setTitle(currentQuestion!.answers[3], for: .normal)
            lblProcess.text = "\(currentQuestionPos + 1) / \(questions.count)"
        }
        
        // Set the background as a blue gradient
        func setGradientBackground() {
            let colorTop =  UIColor.blue.cgColor
            let colorBottom = UIColor.red.cgColor
            
            let gradientLayer = CAGradientLayer()
            gradientLayer.colors = [ colorTop, colorBottom]
            gradientLayer.locations = [ 0.0, 1.0]
            gradientLayer.frame = self.view.bounds
            
            self.view.layer.insertSublayer(gradientLayer, at: 0)
        }
        
        // Before we move to the results screen pass the how many we got correct, and the total number of questions
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if(segue.identifier == "sgShowResults") {
                var vc = segue.destination as! QuizResultsViewController
                vc.noCorrect = noCorrect
                vc.total = questions.count
            }
        }
        
        
        
}

