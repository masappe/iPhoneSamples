//
//  ResultViewController.swift
//  Anzan
//
//  Created by Masato Hayakawa on 2019/11/16.
//  Copyright © 2019 masappe. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var correctAnswerLabel: UILabel!
    @IBOutlet weak var resultImageView: UIImageView!
    var userNumber: Int!
    var correctNumber: Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        correctAnswerLabel.text = String(correctNumber)
        if userNumber == correctNumber {
            resultImageView.image = UIImage(named: "correct")
        } else {
            resultImageView.image = UIImage(named: "incorrect")
        }
    }
    
    @IBAction func restartButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
