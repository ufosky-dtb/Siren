//
//  SirenDelegate.swift
//  SirenExample
//
//  Created by Arthur Sabintsev on 4/8/17.
//  Copyright © 2017 Sabintsev iOS Projects. All rights reserved.
//

import Foundation

// MARK: - SirenDelegate Protocol

/// Delegate that handles all codepaths for Siren upon version check completion.
@objc public protocol SirenDelegate: NSObjectProtocol {
    /// User presented with update dialog.
    @objc func sirenDidShowUpdateDialog(alertType: Siren.AlertType)

    /// User did click on button that launched App Store.app.
    @objc func sirenUserDidLaunchAppStore()

    /// User did click on button that skips version update.
    @objc func sirenUserDidSkipVersion()

    /// User did click on button that cancels update dialog.
    @objc func sirenUserDidCancel()

    /// Siren failed to perform version check (may return system-level error).
    @objc func sirenDidFailVersionCheck(error: Error)

    /// Siren performed version check and did not display alert.
    @objc func sirenDidDetectNewVersionWithoutAlert(message: String)

    /// Siren performed version check and latest version is installed.
    @objc func sirenLatestVersionInstalled()
}

// MARK: - SirenDelegate Protocol Extension

public extension SirenDelegate {

    func sirenDidShowUpdateDialog(alertType: Siren.AlertType) {
        printMessage()
    }

    func sirenUserDidLaunchAppStore() {
        printMessage()
    }

    func sirenUserDidSkipVersion() {
        printMessage()
    }

    func sirenUserDidCancel() {
        printMessage()
    }

    func sirenDidFailVersionCheck(error: Error) {
        printMessage()
    }

    func sirenDidDetectNewVersionWithoutAlert(message: String) {
        printMessage()
    }

    func sirenLatestVersionInstalled() {
        printMessage()
    }

    private func printMessage(_ function: String = #function) {
        SirenLog("The default implementation of \(function) is being called. You can ignore this message if you do not care to implement this method in your `SirenDelegate` conforming structure.")
    }

}
