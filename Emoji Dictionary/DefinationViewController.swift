//
//  DefinationViewController.swift
//  Emoji Dictionary
//
//  Created by Dadral on 17/06/17.
//  Copyright © 2017 Dadral. All rights reserved.
//

import UIKit

class DefinationViewController: UIViewController {

    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definationLabel: UILabel!
    @IBOutlet weak var birthyearLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji.stringEmoji
        definationLabel.text = emoji.defination
        birthyearLabel.text = " \(emoji.birthYear)"
        categoryLabel.text = emoji.category
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
