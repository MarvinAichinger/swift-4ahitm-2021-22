

class Model {
    var numberToGuess = 0
    var countOfTries = 0
    
    func compare(guess guessedNumber: Int!) -> Int! {
        
        var result = 0
        countOfTries += 1
        
        if guessedNumber < numberToGuess {
            result = -1
        }
        else if guessedNumber > numberToGuess {
            result = 1
        }
        return result
    }
    
    func compare(guessedString: String!) -> Int! {
        let guess = Int(guessedString)
        return compare(guess: guess)
    }
    
    func isValid(input: String?) -> Bool {
        
        var result = false
        
        if let str = input {
            if let number = Int(str) {
                if number > 0 && number < 100 {
                    result = true
                }
            }
        }
        
        return result
    }
}
