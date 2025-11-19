
import SwiftUI

struct TransactionContainerView: View {
    let transaction: TransactionModel

    var body: some View {
        VStack {
            HStack(spacing: 12) {
                Image(systemName: transaction.type == .income ?
                    "arrow.up.forward" : "arrow.down.forward")
                    .foregroundStyle(transaction.type == .income ? .blue : .red)
                    .font(.system(size: 20, weight: .medium))

                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text(transaction.title.uppercased())
                            .foregroundStyle(.black)
                            .font(.system(size: 16, weight: .medium))

                        Spacer()

                        Text(transaction.displayAmount.uppercased())
                            .font(.system(size: 15, weight: .medium))
                            .foregroundStyle(.black)
                    }

                    HStack {
                        Text(onTransactionStatus(status: transaction.status).uppercased())
                            .font(.system(size: 14, weight: .regular))
                            .foregroundStyle(onStatusColor(status: transaction.status))
                            .lineLimit(1)

                        Spacer()

                        Text(transaction.dateFormatted.uppercased())
                            .font(.system(size: 14, weight: .regular))
                            .foregroundStyle(.black)
                            .lineLimit(1)
                    }
                }
            }
        }
        .padding(.vertical, 14)
        .padding(.horizontal, 12)
    }

    private func onStatusColor(status: StatusTransaction) -> Color {
        return switch status {
        case .completed: .green
        case .failed: .red
        case .pending: .gray
        }
    }

    private func onTransactionStatus(status: StatusTransaction) -> String {
        return switch status {
        case .pending: "Pending"
        case .completed: "Success"
        case .failed: "Unsuccess"
        }
    }
}

#Preview {
    TransactionContainerView(transaction: TransactionModel(status: .completed, title: "Apple", amount: "12", currency: .usd, type: .expense, date: Date()))
}
