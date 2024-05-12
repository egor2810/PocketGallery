//
//  PasscodeView.swift
//  PocketGallery
//
//  Created by Егор Аблогин on 12.05.2024.
//

import UIKit

protocol PasscodeViewProtocol: AnyObject {
    func passcodeState(state: PasscodeState)
    func enterCode(code: [Int])
}

class PasscodeView: UIViewController {
    
    var passcodePresenter: PasscodePresenterProtocol!
    
    lazy var passcodeTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textAlignment = .center
        
        return label
    }()
    
    lazy var vStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .equalSpacing
//        stack.spacing = 20
        stack.alignment = .center
        
        return stack
    }()

    lazy var deleteBtn: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.widthAnchor.constraint(equalToConstant: 36).isActive = true
        button.heightAnchor.constraint(equalToConstant: 36).isActive = true
        button.setImage(.deleteBtn, for: .normal)
        
        return button
    }()
    
    lazy var codeStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .equalCentering
        stack.spacing = 20
        
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .appMain
    }
}

extension PasscodeView: PasscodeViewProtocol {
    func passcodeState(state: PasscodeState) {

    }
    
    func enterCode(code: [Int]) {
        print(code)
    }
    
    
}


#Preview {
    Builder.getPassCodeController()
}
