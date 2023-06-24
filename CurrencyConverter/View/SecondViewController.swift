import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var usdLabel: UILabel!
    
    @IBOutlet weak var euroLabel: UILabel!
        
    @IBOutlet weak var yenLabel: UILabel!
    
    @IBOutlet weak var poundLabel: UILabel!
    
    @IBOutlet weak var yuanLabel: UILabel!
    
    
    var usdAmount: Int = 0
    var euroSwitchIsOn = false
    var yenSwitchIsOn = false
    var poundSwitchIsOn = false
    var yuanSwitchIsOn = false

    let currency = Currency()

    override func viewDidLoad() {
        super.viewDidLoad()
        usdLabel.text = "$\(usdAmount)"
        if euroSwitchIsOn {
            euroLabel.text = "€\(currency.convertToEuro(usdAmount))"
        }
        if yenSwitchIsOn {
            yenLabel.text = "¥\(currency.convertToYen(usdAmount))"
        }
        if poundSwitchIsOn {
            poundLabel.text = "£\(currency.convertToPound(usdAmount))"
        }
        if yuanSwitchIsOn {
            yuanLabel.text = "¥\(currency.convertToYuan(usdAmount))"
        }
    }
}
