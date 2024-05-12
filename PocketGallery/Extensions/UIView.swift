//
//  UIView.swift
//  PocketGallery
//
//  Created by Егор Аблогин on 12.05.2024.
//

import UIKit

extension UIView {
    static func configure<T: UIView>(view: T, completion: @escaping (T) -> Void) -> T {
        view.translatesAutoresizingMaskIntoConstraints = false
        completion(view)
        return view
    }
}
