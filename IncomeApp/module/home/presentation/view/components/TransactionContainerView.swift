
import SwiftUI

struct TransactionContainerView: View {
    
    let transaction: TransactionModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text(transaction.dateFormatted)
                    .font(.system(size: 15, weight: .medium))
                    .foregroundStyle(.black)
                Spacer()
            }
            .frame(width: .infinity, alignment: .leading)
            .padding(.vertical, 10)
            .background(.gray.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .padding(.bottom, 4)

            HStack {
                Image(systemName: transaction.type == .income ?
                    "arrow.up.forward" : "arrow.down.forward")
                    .foregroundStyle(transaction.type == .income ? .blue : .red)
                    .font(.system(size: 20, weight: .medium))

                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text(transaction.title)
                            .foregroundStyle(.black)
                            .font(.system(size: 16, weight: .medium))

                        Spacer()

                        Text(transaction.displayAmount)
                            .font(.system(size: 15, weight: .medium))
                            .foregroundStyle(.black)
                    }
                    Text("Completed")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundStyle(.black)
                }
            }
        }
    }
}
