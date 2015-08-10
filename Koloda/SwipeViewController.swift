//
//  ViewController.swift
//
//  Created by Jevin Sidhu on 7/17/15.
//  Copyright (c) 2015 Jevin Sidhu. All rights reserved.
//

import UIKit
import Koloda

// Number of cards in the deck
private var numberOfCards: UInt = 3

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
    
    func kolodaViewForCardAtIndex(koloda: KolodaView, index: UInt) -> UIView {
        
        return UIImageView(image: UIImage(named: "Card_like_\(index + 1)"))
        
 // UIImageView(image: UIImage(kolodaView.downloadImage("https://books.google.com/books/content?id=DTp5oAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api,https://books.google.com/books/content?id=DTp5oAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api")))
    
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