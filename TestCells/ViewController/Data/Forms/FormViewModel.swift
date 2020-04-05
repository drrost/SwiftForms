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
