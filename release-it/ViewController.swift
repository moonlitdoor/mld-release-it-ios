//
//  ViewController.swift
//  release-it
//
//  Created by Brian Amesbury on 12/18/18.
//  Copyright © 2018 Moonlit Door. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        RecordAudio(Label)
    }
    
    @IBAction func RecordAudio(_ sender: Any) {
        Label.text = (Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String) + "|" + (Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as! String)
    }
    
    @IBAction func erts(_ sender: UIButton) {
        
    }
}

