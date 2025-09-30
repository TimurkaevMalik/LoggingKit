//
//  OSLogAdapter.swift
//  LoggingKit
//
//  Created by Malik Timurkaev on 30.09.2025.
//

import OSLog

public final class OSLogAdapter: LoggerSink {
    private let logger: Logger
    
    public init(subsystem: String, category: String) {
        self.logger = Logger(subsystem: subsystem, category: category)
    }
    
    public func record(_ message: @autoclosure @escaping () -> String, level: LogLevel) {
        
        logger.log(level: level.osType, "\(message())")
    }
}
