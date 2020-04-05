//
//  ViewControllerTests.swift
//  TestCellsTests
//
//  Created by Rostyslav Druzhchenko on 05.04.2020.
//  Copyright © 2020 Rostyslav Druzhchenko. All rights reserved.
//

import XCTest

@testable import TestCells

class ViewControllerTests: XCTestCase {

    // MARK: - Variables

    var sut: ViewController!

    // MARK: - Tests routines

    override func setUp() {
        sut = .instantiate("Main", "ViewController")
        _ = sut.view
    }

    // MARK: - Init tests

    func testCreation() {
        // Given
        // When
        // Then
        XCTAssertNotNil(sut)
        XCTAssertFalse(sut.sendButton.isEnabled)
    }

    func testdd() {
        // Given
        let indexPath = IndexPath(row: 0, section: 0)

        // When
        let cell = sut.dataSource.tableView(
            sut.tableView, cellForRowAt: indexPath) as! TextCell

        // Then
        XCTAssertEqual(cell.titleLabel.text, "First Name")
        XCTAssertEqual(cell.textField.placeholder, "Type your first name here")
    }
}
