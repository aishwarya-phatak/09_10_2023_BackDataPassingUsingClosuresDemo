//
//  ViewController.swift
//  09_10_2023_BackDataPassingUsingClosuresDemo
//
//  Created by Vishal Jagtap on 12/12/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var middleNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    var secondViewController : SecondViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func btnMoveToSVC(_ sender: Any) {
//        secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
//        
//        secondViewController?.backDataPassingClosure = {
//            (firstName, middleName, lastName) in
//            self.firstNameLabel.text = firstName
//            self.middleNameLabel.text = middleName
//            self.lastNameLabel.text = lastName
//        }
//        
//        self.navigationController?.pushViewController(secondViewController!, animated: true)
    }
}
