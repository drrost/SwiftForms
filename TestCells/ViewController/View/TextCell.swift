//
//  TextCell.swift
//  TestCells
//
//  Created by Rostyslav Druzhchenko on 05.04.2020.
//  Copyright © 2020 Rostyslav Druzhchenko. All rights reserved.
//

import UIKit

class TextCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textField: UITextField!

    func update(with model: CellModelText) {

        titleLabel.text = model.title
        textField.text = model.text
        textField.placeholder = model.placeholder
    }
}
