//
//  ViewController.swift
//  Pre-work
//
//  Created by Ray Du on 1/21/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var MorePetsSwitch: UISwitch!
    
    
    
    @IBOutlet weak var FirstName: UITextField!
    @IBOutlet weak var LastName: UITextField!
    @IBOutlet weak var SchoolName: UITextField!
    @IBOutlet weak var YearSegment: UISegmentedControl!
    @IBOutlet weak var NumberOfPets: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func MorePetStepper(_ sender: UIStepper) {
        NumberOfPets.text = "\(Int(sender.value))"
    }
    
  
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        let year = YearSegment.titleForSegment(at: YearSegment.selectedSegmentIndex)
                
                // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided.
                // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
                let introduction = "My name is \(FirstName.text!) \(LastName.text!) and I attend \(SchoolName.text!).I am currently in my \(year!) year and I own \(NumberOfPets.text!) dogs.It is \(MorePetsSwitch.isOn) that I want more pets."
                
                
                // Creates the alert where we pass in our message, which our introduction.
                let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
                // A way to dismiss the box once it pops up
                let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                
                // Passing this action to the alert controller so it can be dismissed
                alertController.addAction(action)
                
                present(alertController, animated: true, completion: nil)
    }
}

