import SwiftUI

struct HomeContainerView: View {
    @StateObject private var viewmodel: HomeViewModel = HomeViewModel()

    var body: some View {
        VStack {
            List {
                ForEach(viewmodel.transactions) { transaction in
                    TransactionContainerView(transaction: transaction)
                        .listRowSeparator(.hidden)
                        .listRowInsets(EdgeInsets())
                        .listRowSeparatorTint(.red.opacity(0.1))
                }
            }
            .listStyle(.grouped)
            .listRowInsets(EdgeInsets())
            .ignoresSafeArea(.all)
            .scrollContentBackground(.hidden)
            .background(.white)
            .refreshable {
                viewmodel.onUpdateTransactions()
            }
        }
        .padding(.top, 8)
    }
}

#Preview {
    HomeContainerView()
}
