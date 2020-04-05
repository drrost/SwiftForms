//
//  MainScreenViewModel.swift
//  TestCells
//
//  Created by Rostyslav Druzhchenko on 05.04.2020.
//  Copyright © 2020 Rostyslav Druzhchenko. All rights reserved.
//

import Foundation

protocol IFormViewModel {

    var cells: [ICellModel] { get }

    var isValid: Bool { get }
}

extension IFormViewModel {

    var isValid: Bool {

        var result = true

        for cell in cells {
            result = result && cell.isValid
        }

        return result
    }
}

protocol ICellModel {

    var type: CellType { get }
    var isValid: Bool { get }
    var validator: IValidator { get set }
}

enum CellType {

    case undefined
    case text
    case selection
}

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

protocol IValidator {}

class ValidatorMax: IValidator {}
