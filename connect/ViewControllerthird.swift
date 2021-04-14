//
//  ViewControllerthird.swift
//  connect
//
//  Created by V UMESH KUMAR RAJU on 14/04/21.
//

import UIKit

class ViewControllerthird: UIViewController {

    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var confirmPassword: UITextField!
    var dict1:[String:String] = ["name":"umesh","username":"umeshkumar.123","phoneno":"1234567890","password":"umesh123"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func signUp(_ sender: Any)
    {
        print("sighnup button pressed")
        if userName.text == ""
        {
            userName.placeholder = "Fill Username"
            print("Username field is empty.")
        }
        else if name.text == ""
        {
            name.placeholder = "Fill Name"
            print("name field is empty.")
        }
        else if Password.text == ""
        {
            Password.placeholder = "Fill Password"
            print("Password field is empty.")
        }
        else if confirmPassword.text == ""
        {
            confirmPassword.placeholder = "Fill Confirm Password"
            print("Confirm passowrd field is empty.")
        }
        else if Password.text != confirmPassword.text
        {
            message.text = "Correct the confirm password"
            confirmPassword.placeholder = "Fill Confirm Password"
            print("password and confirm passowrd are not matching.")
        }
        else
        {
            dict1["name"] = name.text!
            dict1["username"] = userName.text!
            dict1["phoneno"] = phone.text!
            dict1["password"] = Password.text!
            print("The info stored : \(dict1)")
            print("WELCOME \(name.text!)")
            message.text = "WELCOME \(name.text!)"
        }
    }
}

