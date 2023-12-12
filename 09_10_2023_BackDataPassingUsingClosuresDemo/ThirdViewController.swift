//
//  ThirdViewController.swift
//  09_10_2023_BackDataPassingUsingClosuresDemo
//
//  Created by Vishal Jagtap on 12/12/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var studentDetailsTableView: UITableView!
    var students : [Student] = []
    var secondViewController : SecondViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeTableView()
        registerXIBWithTableView()
    }
    
    func initializeTableView(){
        studentDetailsTableView.dataSource = self
//        studentDetailsTableView.delegate = self
    }
    
    func registerXIBWithTableView(){
        let uiNib = UINib(nibName: "StudentTableViewCell", bundle: nil)
        self.studentDetailsTableView.register(uiNib, forCellReuseIdentifier: "StudentTableViewCell")
    }
    
    @IBAction func btnAddRecord(_ sender: Any) {
        
        secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        
        secondViewController?.backDataPassing = {
            (studentObject) in
            self.students.append(studentObject)
        }
        self.navigationController?.pushViewController(secondViewController!, animated: true)
    }
}

extension ThirdViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let studentTableViewCell = self.studentDetailsTableView.dequeueReusableCell(withIdentifier: "StudentTableViewCell", for: indexPath) as? StudentTableViewCell
        
        studentTableViewCell?.firstNameLabel.text = students[indexPath.row].firstName
        
        studentTableViewCell?.middleNameLabel.text =
        students[indexPath.row].middleName
        
        studentTableViewCell?.lastNameLabel.text = students[indexPath.row].lastName
        
        return studentTableViewCell!
    }
}
