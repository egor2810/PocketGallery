//
//  Builder.swift
//  PocketGallery
//
//  Created by Егор Аблогин on 12.05.2024.
//

import UIKit

protocol BuilderProtocol {
    static func getPassCodeController() -> UIViewController
}

final class Builder: BuilderProtocol {
    static func getPassCodeController() -> UIViewController {
        let passcodeView = PasscodeView()
        let presenter = PasscodePresenter(view: passcodeView, passcodeState: .inputPasscode)
        passcodeView.passcodePresenter = presenter
        
        return passcodeView
    }
}
