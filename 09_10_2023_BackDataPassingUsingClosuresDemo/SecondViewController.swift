//
//  SecondViewController.swift
//  09_10_2023_BackDataPassingUsingClosuresDemo
//
//  Created by Vishal Jagtap on 12/12/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var middleNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    var extractedFirstName : String?
    var extractedMiddleName : String?
    var extractedLastName : String?
    
    //way 1
//    var backDataPassingClosure : ((String, String, String)-> Void)?
    
    
    //way 2
    var backDataPassing : ((Student)->Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }

    @IBAction func btnBack(_ sender: Any) {
        
  //way 1
//        guard let backDataPass = backDataPassingClosure else { return }
//        extractedFirstName = self.firstNameTextField.text
//        extractedMiddleName = self.middleNameTextField.text
//        extractedLastName = self.lastNameTextField.text
//
//        backDataPass(extractedFirstName!, extractedMiddleName!, extractedLastName!)
        
      //way 2
        
        guard let backDataPass = backDataPassing else { return }
        
        extractedFirstName = self.firstNameTextField.text
        extractedMiddleName = self.middleNameTextField.text
        extractedLastName = self.lastNameTextField.text
        let newStudentObj = Student(firstName: extractedFirstName!,
            middleName: extractedMiddleName!,
            lastName: extractedLastName!)
        backDataPass(newStudentObj)
        self.navigationController?.popViewController(animated: true)
    }
}
