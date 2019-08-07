//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Mikolaj Lukasik on 02/08/2019.
//  Copyright © 2019 Mikolaj Lukasik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var segueSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }    
    
    @IBAction func yellowButtonTapped(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "RedToYellow", sender: nil)
        } else {
            performSegue(withIdentifier: "popYellow", sender: nil)
        }
    }
    
    @IBAction func redButtonTapped(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "RedToGreen", sender: nil)
        } else {
            performSegue(withIdentifier: "popGreen", sender: nil)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = "What the hell?"
    }
}

