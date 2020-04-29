//
//  StringCompression.swift
//  AlgorithmsProject
//
//  Created by Igor Kruglik on 14.04.20.
//  Copyright © 2020 Igor Kruglik. All rights reserved.
//

import Foundation

func solution(S: String, K: Int) -> Int {
    
    var result = S.count
    var compressedResult = ""
    
    for (index, _) in S.enumerated() {
        
        if index > S.count - K { break }
        
        var strToCompress = ""
        
        if index > 0 {
            let start = S.index(S.startIndex, offsetBy: 0)
            let end = S.index(S.startIndex, offsetBy: index)
            let range = start..<end
            let rangeStr = S[range]
            strToCompress += String(rangeStr)
        }
        
        let start = S.index(S.startIndex, offsetBy: (index + K))
        let end = S.index(S.endIndex, offsetBy: 0)
        let range = start..<end
        let rangeStr = S[range]
        strToCompress += String(rangeStr)
        
        // count
        let compressedStr = compressedString(strToCompress)
        let compressedCount = compressedStr.count
        if result > compressedCount {
            result = compressedCount
            compressedResult = compressedStr
        }
    }
    
    print(compressedResult)
    return result
}

func compressedString(_ str: String) -> String {
    
    var result = ""
    
    var counterOfChar = 0
    var calcultaingChar = str.first!
    
    for (index, char) in str.enumerated() {
                
        if char == calcultaingChar {
            counterOfChar += 1
            if index != str.count - 1 {
                continue
            }
        } else {
                        
            result += printNumberAndLetter(char: calcultaingChar, count: counterOfChar)
            
            calcultaingChar = char
            counterOfChar = 1
        }
        
        if  index == (str.count - 1) {
            result += printNumberAndLetter(char: calcultaingChar, count: counterOfChar)
        }
                     
    }
    
    return result
}

func printNumberAndLetter(char: Character, count: Int) -> String {
    if count == 1 {
        return "\(char)"
    } else {
        return "\(count)\(char)"
    }
}

func minSubstringWithAllChars(s: String, t: String) -> String {
        
    let len1 = s.count
    let len2 = t.count
            
    if len1 == 0 || len2 == 0 || len1 < len2 {
        return ""
    }
    
    let charArray = Array(s)
    let patternCharArray = Array(t)
    
    var occurencesDict: [Character: Int] = [:]
    
    var count = 0
    var begin = 0
    
    var minWindow = Int.max
        
    for index in ( 0..<len1 ) {
        
        let currentChar = charArray[index]
        
        // check if current char contains in pattern string
        if !patternCharArray.contains(currentChar) {
            continue
        }
        
        // update occurences
        if let _ = occurencesDict[currentChar] {
            // keep value
        } else {
            // increment count
            count += 1
        }
        
        occurencesDict[currentChar] = index
        
        if count == len2 {
            
            // check distance
            let values = occurencesDict.values.sorted(by: <)
            let distance = values[values.count - 1] - values[0]
            
            if distance < minWindow {
                // update min window
                minWindow = distance
                // update first index
                begin = values[0]
            }
            
            // fast exit
            if minWindow == len2 {
                break
            }
            
        }
        
    }
    
    if count == len2 {
        return String(charArray[begin ... begin + minWindow])
    } else {
        return ""
    }

}
