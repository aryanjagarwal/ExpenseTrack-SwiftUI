//
//  TransactionRaw.swift
//  ExpenseTrack
//
//  Created by Aryan Jagarwal on 28/12/22.
//
//

import SwiftUI

struct TransactionRaw: View {
    var transaction: Transaction
    var body: some View {
        HStack(spacing: 20){
            VStack(alignment: .leading, spacing: 6) {
                // MARK: Transcation Merchant
                Text(transaction.merchant)
                    .font(.subheadline)
                    .bold()
                    .lineLimit(1)
                
                // MARK: Transaction Category
                Text(transaction.category)
                    .font(.footnote)
                    .opacity(0.7)
                    .lineLimit(1)
                
                // MARK: Transaction Date
                Text(transaction.dateParsed, format: .dateTime.year().month().day())
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
            
            // MARK: Transaction amount
            Text(transaction.signedAmount, format: .currency(code: "USD"))
                .bold()
                .foregroundColor(transaction.type == TransactionType.credit.rawValue ? Color.text : .primary)
        }
        .padding([.top, .bottom], 8)
    }
}

struct TransactionRaw_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TransactionRaw(transaction: transactionPreviewData)
            TransactionRaw(transaction: transactionPreviewData)
                .preferredColorScheme(.dark)
        }
    }
}
