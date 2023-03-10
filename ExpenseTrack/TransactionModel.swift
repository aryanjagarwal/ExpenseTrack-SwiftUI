//
//  TransactionModel.swift
//  ExpenseTrack
//
//  Created by Aryan Jagarwal on 28/12/22.
//

import Foundation

struct Transaction: Identifiable {
    let id: Int
    let date: String
    let institution: String
    let account: String
    let merchant: String
    let amount: Double
    let type: TransactionType.RawValue
    var categoryID: Int
    var category: String
    var isPending: Bool
    var isTransfer: Bool
    var isExpense: Bool
    var isEdited: Bool
    
    var dateParsed: Date {
        date.dateParsed()
    }
}

enum TransactionType: String {
    case debit = "debit"
    case credit = "credit"
}
