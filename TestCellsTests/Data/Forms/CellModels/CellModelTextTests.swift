//
//  CellModelText.swift
//  TestCellsTests
//
//  Created by Rostyslav Druzhchenko on 05.04.2020.
//  Copyright © 2020 Rostyslav Druzhchenko. All rights reserved.
//

import XCTest

@testable import TestCells

class CellModelTextTests: XCTestCase {

    // MARK: - Variables

    var sut: CellModelText!

    // MARK: - Tests routines

    override func setUp() {
        sut = CellModelText(ValidatorMock())
    }

    // MARK: - Init tests

    func testCreation() {
        // Given
        // When
        // Then
        XCTAssertNotNil(sut)
    }

    func testText3Max3_CellValid() {
        // Given
        sut.text = "abc"
        sut.validator = ValidatorMax(maxLenght: 3)

        // When
        let result = sut.isValid

        // Then
        XCTAssertTrue(result)
    }

    func testText2Max3_CellNotValid() {
        // Given
        sut.text = "ab"
        sut.validator = ValidatorMax(maxLenght: 3)

        // When
        let result = sut.isValid

        // Then
        XCTAssertFalse(result)
    }

    func testText4Max3_CellNotValid() {
        // Given
        sut.text = "abcd"
        sut.validator = ValidatorMax(maxLenght: 3)

        // When
        let result = sut.isValid

        // Then
        XCTAssertFalse(result)
    }
}
