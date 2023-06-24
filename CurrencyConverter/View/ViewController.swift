
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usdTextField: UITextField!
    
    @IBOutlet var errorLabel: UITextField!
    
    @IBOutlet weak var euroSwitch: UISwitch!
    
    @IBOutlet weak var yenSwitch: UISwitch!
    
    @IBOutlet weak var poundSwitch: UISwitch!
    
    @IBOutlet weak var yuanSwitch: UISwitch!
    
    var usdAmount: Int = 0

       override func viewDidLoad() {
           super.viewDidLoad()
           self.title = "Currency Converter"
       }

    @IBAction func convertButtonPressed(_ sender: UIButton) {
        if let usd = Int(usdTextField.text!) {
            usdAmount = usd
            performSegue(withIdentifier: "goToSecondVC", sender: self)
        } else {
            errorLabel.text = "enter integer"
            // This block will clear the error message after 2s
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.errorLabel.text = ""
            }
        }
    }

       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "goToSecondVC" {
               let destinationVC = segue.destination as! SecondViewController
               destinationVC.usdAmount = usdAmount
               destinationVC.euroSwitchIsOn = euroSwitch.isOn
               destinationVC.yenSwitchIsOn = yenSwitch.isOn
               destinationVC.poundSwitchIsOn = poundSwitch.isOn
               destinationVC.yuanSwitchIsOn = yuanSwitch.isOn
           }
       }
   }
