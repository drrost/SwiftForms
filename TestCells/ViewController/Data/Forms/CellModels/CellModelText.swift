//
//  CellModelText.swift
//  TestCells
//
//  Created by Rostyslav Druzhchenko on 05.04.2020.
//  Copyright © 2020 Rostyslav Druzhchenko. All rights reserved.
//

import Foundation

class CellModelText: ICellModel {

    // MARK: - ICellModel

    var type: CellType { .text }
    var title: String

    var isValid: Bool {
        switch validator {
        case let v as ValidatorMax:
            v.text = text
            return validator.validate()
        default:
            return false
        }
    }

    var validator: IValidator

    // MARK: -

    var text: String = ""
    var placeholder: String = ""

    // MARK: - Init

    init(title: String = "",
         text: String = "",
         placeholder: String = "",
         _ validator: IValidator) {

        self.title = title
        self.text = text
        self.placeholder = placeholder
        self.validator = validator
    }
}
