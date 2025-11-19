import SwiftUI

struct HomeContainerView: View {
    @StateObject private var viewmodel: HomeViewModel = HomeViewModel()

    var body: some View {
        VStack {
            List {
                ForEach(viewmodel.transactions) { transaction in
                    TransactionContainerView(transaction: transaction)
                        .listRowSeparator(.hidden)
                        .listRowSeparatorTint(.red.opacity(0.5))
                }
            }
            .listStyle(.grouped)
            .ignoresSafeArea(.all)
            .scrollContentBackground(.hidden)
            .background(.white)
            .refreshable {
                viewmodel.onUpdateTransactions()
            }
        }
        .padding(.top, 24)
    }
}

#Preview {
    HomeContainerView()
}
