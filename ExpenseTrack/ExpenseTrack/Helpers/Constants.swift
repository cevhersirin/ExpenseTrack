//
//  Constants.swift
//  ExpenseTrack
//
//  Created by Cevher Şirin on 4.02.2024.
//

import SwiftUI

let appTint: Color = .blue
let incomeTint: Color = .green
let expenseTint: Color = .red

var categoryColor: (Category) -> Color { 
    { category in
        return (category == .expense) ? expenseTint : incomeTint
    }
}
