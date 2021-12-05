//
//  ViewController.swift
//  Great Number Game
//
//  Created by Atheer Alahmari on 29/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterNo_TF: UITextField!
    var randomNumber = Int.random(in: 1...100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func submet_btn(_ sender: UIButton) {
        //  let enterNo_TF_No = Int(enterNo_TF.text!)!

        
        if  let enterNo_Text = enterNo_TF.text{
         if let enterNo_TF_No = Int(enterNo_Text){
         
        if  randomNumber == enterNo_TF_No {
            //crete Alert
            let alert = UIAlertController(title: "Correct", message: " \(enterNo_TF_No) Was Correct!!!", preferredStyle: UIAlertController.Style.alert)
            
            // add an action button
            alert.addAction(UIAlertAction(title: "Play Again", style: UIAlertAction.Style.destructive, handler:{UIActionHandler in  self.randomNumber = Int.random(in: 1...100)}))
    
            //Change backgroundColor
            alert.view.subviews.first?.backgroundColor = UIColor.systemGreen
            
            // show the alert
            self.present(alert , animated : true , completion : nil)
        }
        //---------------------------------------------------------------
        
        else if  randomNumber > enterNo_TF_No {
            //crete Alert
            let alert = UIAlertController(title: "Incorrect", message: " \(enterNo_TF_No) is Too Low ", preferredStyle: UIAlertController.Style.alert)
            // add an action button
            alert.addAction(UIAlertAction(title: "Guess Again", style: UIAlertAction.Style.default, handler: nil))
            
            //Change backgroundColor
            alert.view.subviews.first?.backgroundColor = UIColor.systemRed

            // show the alert
            self.present(alert , animated : true , completion : nil)
        }
        //----------------------------------------------------------------
        
        else {
            
            //create Alert
           let alert = UIAlertController(title: "Incorrect", message: " \(enterNo_TF_No) is Too High ", preferredStyle: UIAlertController.Style.alert)
            // add an action button
            alert.addAction(UIAlertAction(title: "Guess Again", style: UIAlertAction.Style.default, handler: nil))
            //Change backgroundColor
            alert.view.subviews.first?.backgroundColor = UIColor.systemRed

            // show the alert
            self.present(alert , animated : true , completion : nil)

        }
        
    } //end if  (let enterNo_Text = enterNo_TF.text)
            
        } // end if (let enterNo_TF_No = Int(enterNo_Text))

    
        
        
    
    }
}

