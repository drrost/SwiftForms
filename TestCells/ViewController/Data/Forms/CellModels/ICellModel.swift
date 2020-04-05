//
//  ICellModel.swift
//  TestCells
//
//  Created by Rostyslav Druzhchenko on 05.04.2020.
//  Copyright © 2020 Rostyslav Druzhchenko. All rights reserved.
//

import Foundation

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
