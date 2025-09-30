//
//  Protocols.swift
//  LoggingKit
//
//  Created by Malik Timurkaev on 30.09.2025.
//

import Foundation

public protocol LoggerProtocol {
    typealias LogMessage = () -> String
    
    func log( _ message: @autoclosure @escaping LogMessage, level: LogLevel)
    func debug(_ message: @autoclosure @escaping LogMessage)
    func info(_ message: @autoclosure @escaping LogMessage)
    func notice(_ message: @autoclosure @escaping LogMessage)
    func error(_ message: @autoclosure @escaping LogMessage)
    func fault(_ message: @autoclosure @escaping LogMessage)
}

public protocol LoggerSink {
    func record(_ message: @autoclosure @escaping () -> String, level: LogLevel)
}
