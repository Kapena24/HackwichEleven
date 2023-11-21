//
//  ViewController.swift
//  HackwichEleven
//
//  Created by Kapena Kaaihue on 11/16/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func myGuessButtonPressed(_ sender: Any) {
        let message = " The value is: \(currentValue) " + "\nThe Target value is: \(targetValue)"
        
        let alert = UIAlertController(title: "Hello World", message: message , preferredStyle:.alert)
        
        
        let action = UIAlertAction(title: "Continue", style: .default, handler: nil)
        
        
        alert.addAction(action)
        
        
        present(alert, animated: true, completion: nil)
    }
    @IBOutlet weak var slider: UISlider!
    var currentValue: Int = 0
    var targetValue: Int = 0
    @IBAction func sliderHasMoved(_ sender: Any) {
        startNewRound()
        print("The Value of the slider is:\(slider.value)")
        currentValue = Int((slider.value))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)
        targetValue = Int.random(in:0...100)
        startNewRound()
    }
    
    func startNewRound (){
        targetValue = Int.random(in:0...100)
        targetLabel.text = "\(targetValue)"
       
        currentValue = lroundf(slider.value)
    }
    
    @IBOutlet weak var targetLabel: UILabel!
    
    
}
