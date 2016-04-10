//
//  Quotes.swift
//  inspireus
//
//  Created by Adwait Belsare on 7/11/15.
//  Copyright (c) 2015 Adwait Belsare. All rights reserved.
//

import Foundation

class Quotes {
    
    private var quotes = ["Stay Hungry, Stay Foolish.", "All wonders you seek are within yourself.", "Service to others is the rent you pay for your room here on Earth.", "Faith is taking the first step even when you don't see the whole staircase.", "If your ship doesn't come in, swim out to it.", "Relentless optimism is what moves the world forward.", "Your time is limited so don't waste it living someone else's life.", "Our lives begin to end the day we become silent about things that matter.", "If your dreams don't scare you, they are not big enough.", "If you are not willing to risk the unusual, you will have to settle for the ordinary.", "I act despite of my mood!", "You decided to pursue your dreams. That's confidence!", "Continuous effort - not strength or intelligence - is the key to unclocking our potential.", "When you knock on the door of opportunities, it is work who answers!", "Happiness is not something ready made. It comes from your own actions.", "Be kind whenever possible. It is always possible!", "Try not to become a man of success but rather to become a man of value."]
    
    var count: Int {
      return quotes.count
    }
    
    //return a random quote
    func randomQuote() -> String {
        let randomIndex = Int(arc4random()) % quotes.count // from 0 to (quotes.count - 1)
        return quotes[randomIndex]
    }
    
    
}
