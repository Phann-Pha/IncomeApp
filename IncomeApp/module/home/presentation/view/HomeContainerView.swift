import SwiftUI

struct HomeContainerView: View {
    @State private var transactions: [TransactionModel] = [
        TransactionModel(title: "PHANNA", amount: "100.0", currency: .usd, type: .expense, date: Date.now),
        TransactionModel(title: "SREY LEAK", amount: "99.0", currency: .usd, type: .expense, date: Date.now),
        TransactionModel(title: "SILIB", amount: "200.0", currency: .usd, type: .expense, date: Date.now),
        TransactionModel(title: "SOPHEA", amount: "120.0", currency: .usd, type: .expense, date: Date.now),
        TransactionModel(title: "SOPHEA", amount: "120.0", currency: .usd, type: .expense, date: Date.now),
        TransactionModel(title: "SOPHEA", amount: "120.0", currency: .usd, type: .expense, date: Date.now),
        TransactionModel(title: "SOPHEA", amount: "120.0", currency: .usd, type: .expense, date: Date.now),
    ]

    var body: some View {
        VStack {
            List {
                ForEach(transactions) { transaction in
                    TransactionContainerView(transaction: transaction)
                        .listRowSeparator(.hidden)
                }
            }
            .scrollContentBackground(.hidden)
        }
    }
}

#Preview {
    HomeContainerView()
}
