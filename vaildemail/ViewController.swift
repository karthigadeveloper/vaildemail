//
//  ViewController.swift
//  vaildemail
//
//  Created by apple on 7/18/23.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var textfield: UITextField!
    
    let  mailid = "smilesai1987@gmail.com"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
    }
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-] +@[A-Za-z0-9.-] +\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    func showalret(title:String,message: String)
    {
       let alert = UIAlertController(title: title, message: message, preferredStyle:UIAlertController.Style.alert)
        alert.addAction( UIAlertAction (title:"ok", style: UIAlertAction.Style.default, handler: nil) )
        self.present(alert, animated: true, completion: nil)//popup
   }

    @IBAction func buttonac(_ sender: Any) {
        if (mailid == textfield.text){
            self.performSegue(withIdentifier: "one", sender: nil)
            
            //showalret(title: "mailid", message:"your mailid is correct" )
        }
        else if (mailid != textfield.text){
            showalret(title: "mailid", message:"your mailid is wrong")
        }
        else{
            showalret(title: "@@", message:"not accept")
        }
    }
}


