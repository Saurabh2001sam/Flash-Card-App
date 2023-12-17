//
//  NewDetails.swift
//  Flash Card
//
//  Created by Student on 02/11/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class NewDetails: UIViewController ,UITextFieldDelegate{

    
    
    @IBOutlet weak var subject: UITextField!
    
    @IBOutlet weak var topic: UITextField!
    
    @IBOutlet weak var question: UITextView!
    
    @IBOutlet weak var answer: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        question.text = ""
        answer.text = ""
        // Do any additional setup after loading the view.
    }
    
    func erase(){
        subject.text = ""
        topic.text = ""
        question.text = ""
        answer.text = ""
    }
    
    @IBAction func cancle(_ sender: Any) {
        let alt = UIAlertController(title: "Are You Sure?", message: "All Data You have Entered Now will be Deleted", preferredStyle: UIAlertController.Style.alert)
        let cancel = UIAlertAction(title: "No", style: UIAlertAction.Style.cancel,handler: nil)
        alt.addAction(cancel)
        
        let ok = UIAlertAction(title: "Yes", style: UIAlertAction.Style.destructive) { (action) in self.erase()}
        alt.addAction(ok)
        present(alt, animated: true, completion: nil)
    }
    
    @IBAction func save(_ sender: Any) {
        let sub = subject.text?.capitalized
        let top = topic.text?.capitalized
        
        if dataset[sub!] == nil {
            dataset[sub!] = [:]
            }

        if dataset[sub!]?[top!] == nil {
            dataset[sub!]?[top!] = [:]
            }

        dataset[sub!]?[top!]?[question.text] = answer.text
        
        
                
        let s = "Subject:" + sub!
        let t = "\nTopic:" + top!
        let q = "\nQuestion:" + question.text
        let a = "\nAnswer:" + answer.text
        
        
        let alt = UIAlertController(title: "Saved", message: s + t + q + a, preferredStyle: UIAlertController.Style.actionSheet)
        let cancel = UIAlertAction(title: "Ok", style: UIAlertAction.Style.cancel,handler: nil)
        alt.addAction(cancel)
        present(alt, animated: true, completion: nil)
        
        self.erase()
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        subject.resignFirstResponder()
        topic.resignFirstResponder()
        question.resignFirstResponder()
        answer.resignFirstResponder()
        return true
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
