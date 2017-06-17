//
//  DefinationViewController.swift
//  Emoji Dictionary
//
//  Created by Dadral on 17/06/17.
//  Copyright © 2017 Dadral. All rights reserved.
//

import UIKit

class DefinationViewController: UIViewController {

    @IBOutlet weak var definationLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "No Emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        definationLabel.text = "hello"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
