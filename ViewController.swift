//
//  ViewController.swift
//  Flash Card
//
//  Created by Student on 02/11/23.
//  Copyright © 2023 Student. All rights reserved.
//
import Foundation
import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    
    let subjects = Array(dataset.keys)
    var questions : [String:String] = ["A":"B"]
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return subjects.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let dic = dataset[subjects[section]]
        let topics = Array(dic!.keys)
        return topics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellobj = tableView.dequeueReusableCell(withIdentifier: "cc", for: indexPath)
        
        let sec = indexPath.section
        let row = indexPath.row
        
        let sub = subjects[sec]
        let dic = dataset[sub]
        let topics = Array(dic!.keys)
        let top = topics[row]
        
        questions = dic![top]!
        
        cellobj.textLabel?.text = top
        return cellobj
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return subjects[section]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sec = indexPath.section
        let row = indexPath.row
        
        let sub = subjects[sec]
        let dic = dataset[sub]
        let topics = Array(dic!.keys)
        let top = topics[row]
        
        questions = dic![top]!
        performSegue(withIdentifier: "gotocard", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotocard" {
            
            let destinationVC = segue.destination as! CardViewController
            destinationVC.basket = questions
            
        }
    }

    
    
}

