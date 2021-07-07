import Flutter
import UIKit

public class SwiftSubsocialSdkPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "subsocial_sdk", binaryMessenger: registrar.messenger())
    let instance = SwiftSubsocialSdkPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }

  public static func dummy() {
    subsocial_link_me_plz()
  }
}
