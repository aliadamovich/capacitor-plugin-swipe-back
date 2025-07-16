import Foundation
import Capacitor

@objc(CapacitorSwipeBackPlugin)
public class CapacitorSwipeBackPlugin: CAPPlugin {
    @objc func enable(_ call: CAPPluginCall) {
        webView?.allowsBackForwardNavigationGestures = true;
        webView?.backgroundColor = UIColor.black
        webView?.isOpaque = false
        call.resolve([
            "status": "enable"
        ])
    }
    
    @objc func disable(_ call: CAPPluginCall) {
        webView?.allowsBackForwardNavigationGestures = false;
        call.resolve([
            "status": "disable"
        ])
    }
}
