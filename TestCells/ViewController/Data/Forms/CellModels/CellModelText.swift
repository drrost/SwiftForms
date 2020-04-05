//
//  CellModelText.swift
//  TestCells
//
//  Created by Rostyslav Druzhchenko on 05.04.2020.
//  Copyright © 2020 Rostyslav Druzhchenko. All rights reserved.
//

import Foundation

class CellModelText {

    // MARK: -

    var type: CellType { .text }
    var isValid: Bool { false }
    var validator: IValidator

    // MARK: -

    var text: String = ""
    var placeholder: String = ""

    // MARK: - Init

    init(text: String = "", placeholder: String = "", _ validator: IValidator) {
        self.text = text
        self.placeholder = placeholder
        self.validator = validator
    }
}
