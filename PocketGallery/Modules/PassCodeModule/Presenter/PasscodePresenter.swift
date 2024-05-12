//
//  PasscodePresenter.swift
//  PocketGallery
//
//  Created by Егор Аблогин on 12.05.2024.
//

import UIKit

protocol PasscodePresenterProtocol: AnyObject {
    var passcode: [Int] {get set}
    
    func enterPasscode(number: Int)
    func removeLastItemInPasscode()
    func setNewPasscode()
    func checkPasscode()
    func clearPasscode(state: PasscodeState)
    
    init(view: PasscodeViewProtocol, passcodeState: PasscodeState)
}

class PasscodePresenter: PasscodePresenterProtocol {
    var passcode: [Int] = []
    var view: PasscodeViewProtocol
    var passcodeState: PasscodeState
    
    required init(view: any PasscodeViewProtocol, passcodeState: PasscodeState) {
        self.view = view
        self.passcodeState = passcodeState
        
        //
    }
    
    func enterPasscode(number: Int) {
        
    }
    
    func removeLastItemInPasscode() {
        
    }
    
    func setNewPasscode() {
        
    }
    
    func checkPasscode() {
        
    }
    
    func clearPasscode(state: PasscodeState) {
        
    }
    

    
    
}

enum PasscodeState: String {
    case inputPasscode
    case wrongPasscode
    case setNewPasscode
    case repeatPasscode
    case codeMismatch
    
    func getPasscodeLabel() -> String {
        switch self {
            case .inputPasscode:
                "Введите код"
            case .wrongPasscode:
                "Неверный код"
            case .setNewPasscode:
                "Установить код"
            case .repeatPasscode:
                "Повторите код"
            case .codeMismatch:
                "Коды не совпадают"
        }
    }
}
