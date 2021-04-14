//
//  ViewControllersecond.swift
//  connect
//
//  Created by V UMESH KUMAR RAJU on 14/04/21.
//

import UIKit

class ViewControllersecond: UIViewController {


    
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var UserName: UITextField!
    @IBOutlet weak var Password: UITextField!
    var dict:[String:String] = ["name":"umesh","username":"umeshkumar.123","phoneno":"1234567890","password":"umesh123"]
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    @IBAction func signUp(_ sender: Any)
    {
        let vc = storyboard?.instantiateViewController(withIdentifier: "third_page") as! ViewControllerthird
        present(vc, animated: true)
    }
    @IBAction func logIn(_ sender: Any)
    {
        if UserName.text == "" || Password.text == ""
        {
            print("TEXT FIELD EMPTY")
            if UserName.text == ""
            {
                UserName.placeholder="Enter Username"
            }
            if Password.text == ""
            {
                Password.placeholder="Enter Password"
            }
        }
        else
        {
            if UserName.text == dict["username"]
            {
                if Password.text == dict["password"]
                {
                    message.text = "Welcome \(dict["name"]!)"
                }
                else
                {
                    message.text="log in to connect"
                    print("INCORRECT PASSWORD")
                    Password.placeholder="enter correct password"
                }
            }
            else
            {
                message.text = "Username not found"
            }
            print("Username entered : \(UserName.text!)")
            print("Password entered : \(Password.text!)")
            print("The info compared with : \(dict)")
        }
    }
}
