
//  ViewController.swift
//  EasyVote
//
//  Created by Howard Wells Wulsin on 11/16/16.
//  Copyright © 2016 Howard Wells Wulsin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showMessage() {
        let alertController = UIAlertController(title: "Welcome to My First App", message: "Hello World", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }

    @IBAction func openRegister(sender: AnyObject) {
        let url = URL(string: "https://www.vote.org/register-to-vote")!
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
    }
    
    @IBAction func openCheckRegistration(sender: AnyObject) {
        let url = URL(string: "https://www.vote.org/am-i-registered-to-vote")!
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
    }

    @IBAction func openGetAbsentee(sender: AnyObject) {
        let url = URL(string: "https://www.vote.org/absentee-ballot")!
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
    }

    @IBAction func openFindPollingPlace(sender: AnyObject) {
        let url = URL(string: "https://www.vote.org/polling-place-locator")!
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
    }
    
    
}
  
