//
//  MainScreenViewModel.swift
//  TestCells
//
//  Created by Rostyslav Druzhchenko on 05.04.2020.
//  Copyright © 2020 Rostyslav Druzhchenko. All rights reserved.
//

import Foundation

class MainScreenViewModel: IFormViewModel {

    var cells: [ICellModel] = {
        [CellModelText(title: "First Name",
                       placeholder: "Type your first name here",
                       ValidatorMax(10))]
    }()
}
