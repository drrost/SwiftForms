//
//  ViewController.swift
//  TestCells
//
//  Created by Rostyslav Druzhchenko on 05.04.2020.
//  Copyright © 2020 Rostyslav Druzhchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    private var dataSource: MainTableDataSource!

    override func viewDidLoad() {

        super.viewDidLoad()

        dataSource = MainTableDataSource()
        tableView.delegate = dataSource
        tableView.dataSource = dataSource
    }
}
