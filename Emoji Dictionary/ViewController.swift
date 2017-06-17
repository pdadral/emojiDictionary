//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Dadral on 15/06/17.
//  Copyright © 2017 Dadral. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var dicTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dicTableView.dataSource = self
        dicTableView.delegate = self
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return emojis.count
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emooji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emooji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinationViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.defination = "A smiley face with sunglasses"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🍎"
        emoji2.birthYear = 1700
        emoji2.category = "Fruit"
        emoji2.defination = "I am an apple"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🙏"
        emoji3.birthYear = 000
        emoji3.category = "Greeting"
        emoji3.defination = "Good morining"
        
        return[emoji1,emoji2,emoji3]
    }

}

