import Foundation

public final class RootCompositeLogger: LoggerProtocol {
    
    private let logLevel: LogLevel = {
#if DEBUG
        .debug
#else
        .error
#endif
    }()
    
    private let loggers: [LoggerSink]
    
    public init(loggers: [LoggerSink]) {
        self.loggers = loggers
    }
    
    public func log(_ message: @autoclosure @escaping () -> String, level: LogLevel) {
        guard level >= logLevel else { return }
        loggers.forEach({ $0.record(message(), level: level) })
    }
    
    public func debug(_ message: @autoclosure @escaping () -> String) {
        log(message(), level: .debug)
    }
    
    public func info(_ message: @autoclosure @escaping () -> String) {
        log(message(), level: .info)
    }
    
    public func notice(_ message: @autoclosure @escaping () -> String) {
        log(message(), level: .notice)
    }
    
    public func error(_ message: @autoclosure @escaping () -> String) {
        log(message(), level: .error)
    }
    
    public func fault(_ message: @autoclosure @escaping () -> String) {
        log(message(), level: .fault)
    }
}
