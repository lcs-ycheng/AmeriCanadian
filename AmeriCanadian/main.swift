//
//  main.swift
//  AmeriCanadian
//

import Foundation

// INPUT
// Global variable to use later in program
var expectedCountOfWordsToTranslate = 0

// Write a loop to actually collect the expected count of words to be translated
while 1 == 1 {
    print("How many words will be provided?")
    guard let CountOfWordsToTranslate = readLine() else {
        continue
    }
    guard let wordsToTranslate = Int(CountOfWordsToTranslate) else {
        continue
    }
    if wordsToTranslate < 0 || wordsToTranslate > 10 {
        continue
    }
    expectedCountOfWordsToTranslate = wordsToTranslate
    break // stop the loop
}
// PROCESS
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// NOTE:
//
// Some example code that may be useful


//print(isAmerican)


// Example of how to collect multiple input lines
for counter in 1...expectedCountOfWordsToTranslate {
    
    // Get each word
    print("Enter word #\(counter):")
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    // Now we have the line, we can print it out, analyze it as needed, et cetera
    print(givenInput)
    
    //check American or Canadian not
    let isAmerican = givenInput.hasSuffix("or")
    let isCanadian = givenInput.hasSuffix("our")
    
    if givenInput.count < 4 {
        print(givenInput)
    } else if isAmerican {
        for _ in givenInput {
        var reversedWord = String(givenInput.reversed())
        print("The reversed word is: \(reversedWord)")
        var originalWord = String(reversedWord.reversed())
        print("The reversed word, reversed again is: \(originalWord)")
        if isCanadian {
            break
        } else {
            var reversedAgainWord = String(originalWord.reversed())
            print("The reversed word, reversed again is: \(reversedAgainWord)")
            
        }
        }
}
}

// OUTPUT
// Report results to the user here


