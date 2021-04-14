//
//  ViewController.swift
//  connect
//
//  Created by V UMESH KUMAR RAJU on 14/04/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func logIn(_ sender: Any) {
        let vc1 = storyboard?.instantiateViewController(withIdentifier: "second_page") as! ViewControllersecond
        present(vc1, animated: true)
        let vc2 = storyboard?.instantiateViewController(withIdentifier: "third_page") as! ViewControllerthird
        present(vc2, animated: true)
    }
    
}

