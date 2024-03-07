import Foundation

@objc public class LaunchNative: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
