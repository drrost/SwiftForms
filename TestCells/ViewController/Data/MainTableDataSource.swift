//
//  MainTableDataSource.swift
//  TestCells
//
//  Created by Rostyslav Druzhchenko on 05.04.2020.
//  Copyright © 2020 Rostyslav Druzhchenko. All rights reserved.
//

import UIKit

class MainTableDataSource: NSObject {

    private let cellIdentifier = "TextCell"
    private let viewModel = MainScreenViewModel()
}

// MARK: - UITableViewDataSource

extension MainTableDataSource: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.cells.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TextCell
        cell.titleLabel.text = viewModel.cells[indexPath.row].title
        return cell
    }
}

// MARK: - UITableViewDelegate

extension MainTableDataSource: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
