
import UIKit

class ViewController: UIViewController {
    
    var model = Model()
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var guessButton: UIButton!
    
    
    @IBAction func onChangeTextField(_ sender: UITextField) {
        //print("new text: \(sender.text)")
        guessButton.isEnabled = model.isValid(input: sender.text)
    }
    
    @IBAction func guessButtonClick(_ sender: UIButton) {
        let guessedNumber = model.compare(guessedString: textField.text!)
        
        let text:String?
        
        switch guessedNumber {
        case -1:
            text = "Zu klein"
        case 1:
            text = "Zu groß"
        default:
            text = "Correct! Tries: \(model.countOfTries)"
        }
        
        label.text = text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model.numberToGuess = Int.random(in: 0..<100)
        label.text = "Guess now!"
        print("Zu erratende Zahl \(model.numberToGuess)")
    }

}
