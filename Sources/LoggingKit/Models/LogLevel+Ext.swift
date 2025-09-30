//
//  LogLevel+Ext.swift
//  LoggingKit
//
//  Created by Malik Timurkaev on 30.09.2025.
//

import OSLog

extension LogLevel {
    var osType: OSLogType {
        switch self {
        case .debug:
                .debug
        case .info:
                .info
        case .notice:
                .default
        case .error:
                .error
        case .fault:
                .fault
        }
    }
}
