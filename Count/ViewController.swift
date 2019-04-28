//
//  ViewController.swift
//  Count
//
//  Created by Life is Tech ! on 2019/04/19.
//  Copyright © 2019 Life is Tech !. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number: Int = 0
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plus() {
        number = number + 1
        label.text = String(number)

        changeColor()
    }

    // MARK: - スキルチェック

    @IBAction func minus() {
        number = number - 1
        label.text = String(number)

        changeColor()
    }

    @IBAction func multiply() {
        number = number * 2
        label.text = String(number)

        changeColor()
    }

    @IBAction func divide() {
        number = number / 2
        label.text = String(number)

        changeColor()
    }

    @IBAction func clear() {
        number = 0
        changeColor()
        transition()
    }
    
    func transition() {
        UIView.transition(with: label, duration: 0.5, options: UIView.AnimationOptions.transitionCurlUp, animations: { [weak self] in
            self?.label.alpha = 0
        }, completion: { [weak self] isCompleted in
            guard let number = self?.number else { return }
            self?.label.alpha = 1.0
            self?.label.text = String(number)
        })
    }
    
    func changeColor() {
        if (number >= 10) {
            label.textColor = UIColor.red
        } else if (number <= -10) {
            label.textColor = UIColor.blue
        } else {
            label.textColor = UIColor.black
        }
    }
}

