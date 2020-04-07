//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var choice1Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        let theStory = storyBrain.getStory()
        storyLabel.text = theStory.title
        choice1Button.setTitle(theStory.choice1, for: UIControl.State.normal)
        choice2Button.setTitle(theStory.choice2, for: UIControl.State.normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        //let choiceMade = sender.currentTitle
       
        _ = storyBrain.advanceStory(choice: 1)
        updateUI()
    }
    
    @IBAction func choice2Made(_ sender: UIButton) {
        _ = storyBrain.advanceStory(choice: 2)
        updateUI()
    }
}

