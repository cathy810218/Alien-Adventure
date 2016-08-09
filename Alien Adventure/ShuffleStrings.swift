//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        if s1 == "" && s2 == "" && shuffle == "" {
            return true
        }
        if shuffle.characters.count != s1.characters.count + s2.characters.count {
            return false
        }
        let a1 = Array(s1.characters)
        let a2 = Array(s2.characters)
        var index1 = 0
        var index2 = 0

        for c in shuffle.characters {
            if index1 < a1.count && a1[index1] == c {
                index1 += 1
            } else if index2 < a2.count && a2[index2] == c {
                index2 += 1
            } else {
                return false
            }
        }
        
        return true
    }
}
