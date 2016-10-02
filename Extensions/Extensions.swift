//
//  Extensions.swift
//  Extensions
//
//  Created by Mirim An on 10/2/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
let consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "x", "z"]

let vowels = ["a", "e", "i", "o", "u", "y"]

extension String{
    func whisper() -> String {
        return self.lowercased()
}
    func shout() -> String {
        return self.uppercased()
    }
    
    var pigLatin: String {
        var newWord = ""
        var new:String = ""
        var newArray:[String] = []
        if self.characters.count == 1 {
            newWord = self
        } else {
            for word in self.components(separatedBy: " "){
                var wordOut:String = word
                let sliced = wordOut.remove(at: wordOut.startIndex)
                newWord = wordOut + String(sliced) + "ay"
                newArray.append(newWord)
                new = newArray.joined(separator: " ").lowercased().capitalized
                
                }
        
       }
        return new
    }


    var points:Int{
        var score = 0
        for alphabet in consonants {
            for word in self.lowercased().components(separatedBy: " ") {
                for character in word.characters {
                    if alphabet == String(character){
                        score += 1
                    }
                }
            }
        }
        
        for vowel in vowels {
            for word in self.lowercased().components(separatedBy: " ") {
                for character in word.characters {
                    if vowel == String(character) {
                        score += 2
                    }
                }
            }
        }

        return score
        
    }
    var unicornLevel:String {
        var unicorns: String = ""
        for character in self.characters {
            if String(character) != " " {
            unicorns += "🦄"
            }
        }
        return unicorns
    }
    
}

extension Int{
    func half()->Int{
        return self/2
    }
    
    func isDivisible(by number:Int)->Bool{
        return self % number == 0
    }
    
    var squared:Int {
        return self*self
    }
    
    var halved:Int {
        return self.half()
    }
}
