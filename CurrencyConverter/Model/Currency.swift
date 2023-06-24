import Foundation

struct Currency {
    let usdToEuro = 0.85
    let usdToYen = 110.62
    let usdToPound = 0.76
    let usdToYuan = 6.46

    func convertToEuro(_ amount: Int) -> Double {
        return Double(amount) * usdToEuro
    }

    func convertToYen(_ amount: Int) -> Double {
        return Double(amount) * usdToYen
    }

    func convertToPound(_ amount: Int) -> Double {
        return Double(amount) * usdToPound
    }

    func convertToYuan(_ amount: Int) -> Double {
        return Double(amount) * usdToYuan
    }
}
