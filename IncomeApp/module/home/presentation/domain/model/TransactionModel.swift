
import Foundation

struct TransactionModel: Identifiable {
    let id: UUID = UUID()
    var status: StatusTransaction
    var title: String
    var amount: String
    var currency: CurrencyType
    var type: TransactionTypeModel
    var date: Date
    var dateFormatted: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter.string(from: date)
    }

    var displayAmount: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .none
        numberFormatter.maximumFractionDigits = 2
        let amountAsNumber = NSNumber(value: Double(amount) ?? 0)
        let formattedAmount = numberFormatter.string(from: amountAsNumber) ?? "0"
        return "\(currency == .usd ? "$" : "៛") \(formattedAmount).00"
    }
}
