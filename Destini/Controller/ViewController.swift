//
//  ViewController.swift
//  Destini
//
//  Created by Артём Голынец on 4.02.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    
    @IBOutlet weak var secondButton: UIButton!
    
    @IBOutlet weak var firstButton: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = storyBrain.storyQuestion[0].title
        firstButton.setTitle(storyBrain.storyQuestion[0].choice1, for: .normal)
        secondButton.setTitle(storyBrain.storyQuestion[0].choice2, for: .normal)
    }

    @IBAction func clickButton(_ sender: UIButton) {
        storyBrain.answerCheck((sender.titleLabel?.text)!)
        questionLabel.text = storyBrain.returnQuestion()
        firstButton.setTitle(storyBrain.returnChoice1(), for: .normal)
        secondButton.setTitle(storyBrain.returnChoice2(), for: .normal)
    }
    
}

