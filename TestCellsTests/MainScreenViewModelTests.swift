//
//  MainScreenViewModel.swift
//  TestCellsTests
//
//  Created by Rostyslav Druzhchenko on 05.04.2020.
//  Copyright © 2020 Rostyslav Druzhchenko. All rights reserved.
//

import XCTest

@testable import TestCells

class MainScreenViewModelTests: XCTestCase {

    // MARK: - Variables

    var sut: MainScreenViewModel!

    // MARK: - Tests routines

    override func setUp() {
        sut = MainScreenViewModel()
    }

    // MARK: - Init tests

    func testCreation() {
        // Given
        // When
        // Then
        XCTAssertNotNil(sut)
    }

    func testEmptyFormIsValid() {
        // Given
        // When
        sut.cells = [ICellModel]()

        // Then
        XCTAssertTrue(sut.isValid)
    }

    func testOneValidCell_FormIsValid() {
        // Given
        sut.cells = [CellModelMock(true)]
        // When
        // Then
        XCTAssertTrue(sut.isValid)
    }

    func testOneNotValidCell_FormNotValid() {
        // Given
        sut.cells = [CellModelMock(false)]
        // When
        // Then
        XCTAssertFalse(sut.isValid)
    }

    func testTwoInvalidCells_FromNotValid() {
        // Given
        sut.cells = [CellModelMock(false), CellModelMock(false)]
        // When
        // Then
        XCTAssertFalse(sut.isValid)
    }

    func testOneValidOneInvalidCells_FromNotValid() {
        // Given
        sut.cells = [CellModelMock(true), CellModelMock(false)]
        // When
        // Then
        XCTAssertFalse(sut.isValid)
    }

    func testTwoValidCells_FromValid() {
        // Given
        sut.cells = [CellModelMock(true), CellModelMock(true)]
        // When
        // Then
        XCTAssertTrue(sut.isValid)
    }
}

// MARK: - Mocks

class CellModelMock: ICellModel {

    var validator: IValidator = ValidatorMock()

    var type: CellType { .undefined }

    var isValid: Bool

    init(_ isValid: Bool) {
        self.isValid = isValid
    }
}

class ValidatorMock: IValidator {}
