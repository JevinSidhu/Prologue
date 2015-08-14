////
////  LoginViewController.swift
////  Koloda
////
////  Created by Jevin Sidhu on 2015-07-24.
////  Copyright (c) 2015 CocoaPods. All rights reserved.
////
//
//import UIKit
//
//class LoginViewController: UIViewController {
//
//    @IBAction func loginBtnTapped(sender: AnyObject) {
//        GROAuth.loginWithGoodreadsWithCompletion { ([NSObject : AnyObject]!, error:NSError!) -> Void in
//            println("login-presented")
//            
//            if (error != nil) {
//                println("Error logging in: %@")
//            }
//        else {
////            var username: NSURLRequest = GROAuth.goodreadsRequestForOAuthPath("api/auth_user", parameters: nil, HTTPmethod: "GET")
////            var urlResponse: NSHTTPURLResponse? = nil
////            var urlError: NSError = NSError()
////            var responseData = NSURLConnection.sendSynchronousRequest(request: username, returningResponse: urlResponse, error: urlError)
////            
////            //  var result: String = "(\responseData), (\NSUTF8StringEncoding)"
////            // println("result: %@", result)
//            }
//            
//        }
//    }
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
//    */
//    
//    override func preferredStatusBarStyle() -> UIStatusBarStyle {
//        return UIStatusBarStyle.LightContent
//    }
//
//}
