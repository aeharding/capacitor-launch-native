import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(LaunchNativePlugin)
public class LaunchNativePlugin: CAPPlugin {
    @objc func attempt(_ call: CAPPluginCall) {
        let url = call.getString("url") ?? ""

        let parsedUrl = URL(string: url)!

        DispatchQueue.main.async {
            UIApplication.shared.open(parsedUrl, options: [.universalLinksOnly: true]) { success in
                if success {
                    call.resolve([
                        "completed": true
                    ])
                } else {
                    call.resolve([
                        "completed": false
                    ])
                }
            }
        }
    }
}
