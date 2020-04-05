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
    }

    // MARK: - Init tests

    func testCreation() {
        // Given
        // When
        // Then
        XCTAssertNotNil(sut)
    }
}
