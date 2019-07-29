//
//  RNFrameExtractor.swift
//  RNFrameExtractor
//
//  Created by Sarah Heacock on 7/28/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import UIKit
import AVFoundation

@objc(RNFrameExtractor)
class RNFrameExtractor: NSObject, AVCaptureVideoDataOutputSampleBufferDelegate {
    private var permissionGranted = false
    private let sessionQueue = DispatchQueue(label: "session queue")
    private let captureSession = AVCaptureSession()

    // init() {
    //     checkPermission()
    //     sessionQueue.async { [unowned self] in
    //         self.configureSession()
    //     }
    // }

    private func checkPermission() {
        switch AVCaptureDevice.authorizationStatus(for: AVMediaTypeVideo) {
        case .authorized:
            // The user has explicitly granted permission for media capture
            permissionGranted = true
        
        case .notDetermined:
            // The user has not yet granted or denied permission
            requestPermission()
        
        default:
            // The user has denied permission
            permissionGranted = false
        }
    }

    private func requestPermission() {
        sessionQueue.suspend()
        AVCaptureDevice.requestAccess(for: AVMediaTypeVideo) { granted in
            self.permissionGranted = granted
            self.sessionQueue.resume()
        }
    }

    @objc static func requiresMainQueueSetup() -> Bool {
        return false;
    }

    // @objc static func methodQueue() -> Bool {
    //     return dispatch_queue_create("com.facebook.React.AsyncLocalStorageQueue", DISPATCH_QUEUE_SERIAL);
    // }

    @objc(hello:)
    func hello(name: String) -> Void {
        NSLog("Hello, %@!", name);
        checkPermission()
        // sessionQueue.async { [unowned self] in
        //     // self.configureSession()
        // }
        // Date is ready to use!
    }
}
