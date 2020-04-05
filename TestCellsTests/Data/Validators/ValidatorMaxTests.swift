//
//  ValidatorMaxTests.swift
//  TestCellsTests
//
//  Created by Rostyslav Druzhchenko on 05.04.2020.
//  Copyright © 2020 Rostyslav Druzhchenko. All rights reserved.
//

import XCTest

@testable import TestCells

class ValidatorMaxTests: XCTestCase {

    // MARK: - Variables

    var sut: ValidatorMax!

    // MARK: - Tests routines

    override func setUp() {
        sut = ValidatorMax()
    }

    // MARK: - Init tests

    func testCreation() {
        // Given
        // When
        // Then
        XCTAssertNotNil(sut)
    }
}
