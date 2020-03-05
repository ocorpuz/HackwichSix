//
//  ViewController.swift
//  HackwichSix
//
//  Created by CM Student on 3/3/20.
//  Copyright © 2020 Oliver Corpuz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var myFriends = ["Ja","Mo","Ra"]
    var Travel = ["Italy", "Spain", "Greenland"]
    var City = ["Rome" , "Barcelona" , "Nuuk"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Travel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        
        let text = Travel[indexPath.row]
        
        cell.textLabel?.text=text
        
        cell.detailTextLabel?.text = City[indexPath.row]
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

