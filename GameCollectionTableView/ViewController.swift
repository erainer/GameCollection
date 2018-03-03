//
//  ViewController.swift
//  GameCollectionTableView
//
//  Created by Emily on 3/3/18.
//  Copyright © 2018 Emily. All rights reserved.
//

import UIKit

class ViewController: UIViewController,  UITableViewDataSource, UITableViewDelegate{
    
    let gameIcons = [UIImage(named: "arkLogoo.png"), UIImage(named: "abberation.png"), UIImage(named: "rocketLeague.png"), UIImage(named: "dying.png"), UIImage(named: "bastion.png"), UIImage(named: "sword.png"), UIImage(named: "gta.jpg"), UIImage(named: "little.png"), UIImage(named: "borderlands.jpg"), UIImage(named: "left.ong"), UIImage(named: "grow.jpg"), UIImage(named: "killing.png")]
    
    let gameCollection = ["Ark Survival Evolved", "Abberation", "Rocket League", "Dying Light", "Bastion", "Transistor", "Grand Theft Auto", "Little Nightmares", "Borderlands 2", "Left 4 Dead", "Grow Home", "Killing Floor"]
    
    let myTableIdentifier = "myTableIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gameCollection.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: myTableIdentifier)
        if(cell == nil){
            cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: myTableIdentifier)
        }
        cell?.textLabel?.text = gameCollection[indexPath.row]
        cell?.imageView?.image = gameIcons[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let rowValue = gameCollection[indexPath.row]
        let message = "\(rowValue)"
        let controller = UIAlertController(title: "Game Selected", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Yes I Did", style: .default, handler: nil)
        controller.addAction(action)
        present(controller, animated: true, completion: nil)
    }
    
    
    
}

