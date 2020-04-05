//
//  ValidatorMax.swift
//  TestCells
//
//  Created by Rostyslav Druzhchenko on 05.04.2020.
//  Copyright © 2020 Rostyslav Druzhchenko. All rights reserved.
//

import Foundation

class ValidatorMax: IValidator {

    var text: String = ""
    var maxLenght: Int = 0

    func validate() -> Bool {
        text.count == maxLenght
    }

    init(maxLenght: Int) {
        self.maxLenght = maxLenght
    }
}
