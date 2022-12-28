//
//  TransactionRaw.swift
//  ExpenseTrack
//
//  Created by Aryan Jagarwal on 28/12/22.
//

import SwiftUI

struct TransactionRaw: View {
    var transaction: Transaction
    var body: some View {
        HStack(spacing: 20){
            
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
