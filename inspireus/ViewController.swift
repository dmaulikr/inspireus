//
//  ViewController.swift
//  inspireus
//
//  Created by Adwait Belsare on 7/11/15.
//  Copyright (c) 2015 Adwait Belsare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var quotes = Quotes()
    
    //Interface Builder
    @IBOutlet weak var quoteLabel: UILabel!
    
    //gets called when user taps the button. Tap event listener
    @IBAction func inspireMeDidTap(sender: UIButton) {
        let quote = quotes.randomQuote()
        quoteLabel.text = quote
        
        //Change the background image
        let image = loadRandomImage()
        backgroundImageView.image = image
        
        //Change button background color
        sender.backgroundColor = getRandomColor()
    }
    
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    func loadRandomImage() -> UIImage {
        let imageCount = 6
        
        // returns 0 -> 5. So add 1
        let randomNumber = Int(arc4random()) % imageCount + 1
        if let image = UIImage(named: "image\(randomNumber)") {
            return image
        }
        
        return UIImage(named: "image1")!
    }
    
    func getRandomColor() -> UIColor {
        let random = Int(arc4random()) % 5
        switch random {
        case 0: return UIColor(red: 211/255.0, green: 86/255.0, blue: 87/255.0, alpha: 0.9)
        case 1: return UIColor(red: 71/255.0, green: 175/255.0, blue: 137/255.0, alpha: 0.9)
        case 2: return UIColor(red: 229/255.0, green: 177/255.0, blue: 93/255.0, alpha: 0.9)
        case 3: return UIColor(red: 92/255.0, green: 163/255.0, blue: 178/255.0, alpha: 0.9)
        case 4: return UIColor(red: 38/255.0, green: 38/255.0, blue:38/255.0, alpha: 0.9)
        default: return UIColor(red: 56/255.0, green: 72/255.0, blue: 72/255.0, alpha: 0.9)
        
        }
    }


}

