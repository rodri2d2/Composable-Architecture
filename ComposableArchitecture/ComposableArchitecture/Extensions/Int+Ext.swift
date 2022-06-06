//
//  Int+Ext.swift
//  ComposableArchitecture
//
//  Created by Rodrigo  Candido on 4/6/22.
//

import Foundation


extension Int {
    
    
    /// Return a formatted String from a Int as Xth
    /// ```
    /// let formated = 12.ordinalFormat
    /// output => "12th"
    /// ```
    /// - Parameter n: Int
    /// - Returns: String
    func ordinalFormat() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .ordinal
        return formatter.string(for: self) ?? ""
    }
}
