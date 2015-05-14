//
//  PlayerDetailsViewController.swift
//  Ratings
//
//  Created by Jackie on 15/5/14.
//  Copyright (c) 2015年 JackieZhou. All rights reserved.
//

import UIKit

class PlayerDetailsViewController: UITableViewController {
    
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    
    var player:Player!
    
    var game:String = "Chess"

    
    required init(coder aDecoder: NSCoder) {
        println("init PlayerDetailsViewController")
        super.init(coder: aDecoder)
    }
    
    deinit {
        println("deinit PlayerDetailsViewController")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel.text = game
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SavePlayerDetail" {
            player = Player(name: nameTextField.text, game:game, rating: 1)
        }
        if segue.identifier == "PickGame" {
            if let gamePickerViewController = segue.destinationViewController as? GamePickerViewController {
                gamePickerViewController.selectedGame = game
            }
        }
    }

    @IBAction func selectedGame(segue:UIStoryboardSegue) {
        if let gamePickerViewController = segue.sourceViewController as? GamePickerViewController,
            selectedGame = gamePickerViewController.selectedGame {
                detailLabel.text = selectedGame
                game = selectedGame
        }
    }
}
