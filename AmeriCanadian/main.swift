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
    
    //if the input is less than 4, print out the solution
    if givenInput.count <= 4 {
        print("The translation is \(givenInput)")
        
    }
        //if is American word, translate.
    else if isAmerican{
        // translate to Canadian
        for _ in givenInput {
            let reversedWord = String(givenInput.reversed())
            print(reversedWord)
            //create a variable called reversed Canadian word
            var reversedCanadianWord = ""
            for letter in reversedWord {
                reversedCanadianWord += String(letter)
                //reversed the american word. E.g color, reversed word of color is roloc.
                if reversedCanadianWord.count == 1 {
                    //add u into the word. e.g ruoloc
                    reversedCanadianWord += "u"
                    
                }
                
            }
            //reversed the word again e.g colour
            let originalWord = String(reversedCanadianWord.reversed())
            print("The translation is \(originalWord)")
            break
        }
    }
        //if is Canadian word, print out the solution.
    else if isCanadian {
        print("The translation is \(givenInput)")
        
    }
}
