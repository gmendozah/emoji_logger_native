import Flutter
import UIKit

public class SwiftFlutterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_plugin", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    let arguments = call.arguments as! NSDictionary
    switch call.method {
        case "debug":
            print(arguments["message"])
            result(nil)
            break
        case "error":
            print(arguments["message"])
            result(nil)
            break
        default:
            result(FlutterMethodNotImplemented)
    }
  }
}
