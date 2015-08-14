//
//  ButtonViewController.swift
//  Koloda
//
//  Created by Jevin Sidhu on 2015-07-20.
//  Copyright (c) 2015 CocoaPods. All rights reserved.
//

import UIKit
import Koloda

class ButtonViewController: UIViewController {
    
    func highlightButton(button: UIButton) {
        button.highlighted = true
    }

    @IBOutlet weak var buttonBooks: UIButton!
    
    //@IBAction func unwindToButton(segue: UIStoryboardSegue) { }
    
    @IBAction func buttonGetBooks(sender: UIButton) {
        let image = UIImage(named: "PushedButton") as UIImage!
        self.buttonBooks.setImage(image, forState: .Normal)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonBooks.setImage(UIImage(named:"UnpushedButton"),forState:UIControlState.Normal)
        buttonBooks.setImage(UIImage(named:"PushedButton"),forState:UIControlState.Highlighted)
       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
}