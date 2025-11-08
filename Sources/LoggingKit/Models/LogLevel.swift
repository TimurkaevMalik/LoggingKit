//
//  LogLevel.swift
//  LoggingKit
//
//  Created by Malik Timurkaev on 30.09.2025.
//

import Foundation

public enum LogLevel: Int, Sendable {
    case debug, info, notice, error, fault
}


extension LogLevel: Comparable {
    public static func < (lhs: LogLevel, rhs: LogLevel) -> Bool {
        lhs.rawValue < rhs.rawValue
    }
}
