
import Combine
import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var transactions: [TransactionModel] = []

    private var counter: Int = 1

    func onUpdateTransactions() {
        transactions.insert(
            TransactionModel(
                status: .pending,
                title: "Q-\(counter)",
                amount: "1\(counter)",
                currency: .usd,
                type: .expense,
                date: Date.now),
            at: 0)
        counter += 1
    }
}
