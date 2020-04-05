//
//  ViewController.swift
//  TestCells
//
//  Created by Rostyslav Druzhchenko on 05.04.2020.
//  Copyright © 2020 Rostyslav Druzhchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var sendButton: UIButton!

    // MARK: - Variables

    private var dataSource: MainTableDataSource!

    // MARK: - View lifecycle

    override func viewDidLoad() {

        super.viewDidLoad()

        dataSource = MainTableDataSource()
        tableView.delegate = dataSource
        tableView.dataSource = dataSource

        sendButton.isEnabled = false
    }
}
