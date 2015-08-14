//
//  ViewController.swift
//
//  Created by Jevin Sidhu on 7/17/15.
//  Copyright (c) 2015 Jevin Sidhu. All rights reserved.
//

import UIKit
import Koloda
import Kingfisher

// Number of cards in the deck
private var numberOfCards: UInt = 2

class SwipeViewController: UIViewController, KolodaViewDataSource {
    
    @IBOutlet weak var kolodaView: KolodaView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        kolodaView.dataSource = self
       
//        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
//        let documentsDir = paths.firstObject as! String
//        println("Path to the Documents directory\n\(documentsDir)")
        
    }
    
    //MARK: IBActions for Left + Right + Undo Buttons
    @IBAction func leftButtonTapped() {
        kolodaView?.swipe(SwipeResultDirection.Left)
    }
    
    @IBAction func rightButtonTapped() {
        kolodaView?.swipe(SwipeResultDirection.Right)
    }
    
    @IBAction func undoButtonTapped() {
        kolodaView?.revertAction()
    }
    
    //MARK ViewDataSource
    
    func kolodaNumberOfCards(koloda: KolodaView) -> UInt {
        return numberOfCards
    }
    
    func kolodaViewForCardAtIndex(koloda: KolodaView, index: UInt) -> UIImageView {
        
        //koloda.kf_setImageWithURL(NSURL(string: "https://raw.githubusercontent.com/JevinSidhu/Prologue/master/image/Card_like_\(index + 1).png")!, placeholderImage: nil)
//        
//        ImageLoader.sharedLoader.imageForUrl("https://raw.githubusercontent.com/JevinSidhu/Prologue/master/image/Card_like_\(index + 1).png", completionHandler:{(image: UIImage?, url: "https://raw.githubusercontent.com/JevinSidhu/Prologue/master/image/Card_like_\(index + 1).png") in
//            self.kolodaView.image = image
//        })
        
        return UIImageView(image: UIImage(named: "Card_like_\(index + 1)"))
        
        // UIImageView(image: UIImage(kolodaView.kf_setImageWithURL(NSURL(string: "https://raw.githubusercontent.com/JevinSidhu/Prologue/master/image/Card_like_\(index + 1).png")!, placeholderImage: nil)
    
    }
    
    func kolodaViewForCardOverlayAtIndex(koloda: KolodaView, index: UInt) -> OverlayView? {
        return NSBundle.mainBundle().loadNibNamed("OverlayView",
            owner: self, options: nil)[0] as? OverlayView
    }
    
    //MARK: KolodaViewDelegate

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    
    
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if (segue.identifier == "ShowDiscoverySegue") {
//            func kolodaShouldApplyAppearAnimation(koloda: KolodaView) -> Bool {
//                return true
//            }        }
//    }

}