//
//  SwiftUiProjectTests02.swift
//  SwiftUiProjectTests
//
//  Created by WADOUACHI on 16/10/2024.
//

import XCTest
@testable import SwiftUiProject
final class SwiftUiProjectTests02: XCTestCase {
    let viewModel = MainViewModel()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testGiven_WhenAdditionTwoNumbersThenGettingSumOfThem() {
        let a = 1
        let b = 2
        let awaitedResult = 3
        var answer = 0
        XCTAssertTrue(awaitedResult != answer)
        answer = viewModel.additionne( a, et: b)
        XCTAssertTrue(awaitedResult == answer)
    }
    
    func testGivenIsValidTrueWhenLoginFalseThenIsValidFalse()
    {
        viewModel.isValid = true
        let answerWaited = false
        let wrongLogin = "vfdzfzu"
        let wrongPassword = "67898764"
        XCTAssertTrue(viewModel.isValid != answerWaited)
        viewModel.checkConnection(login: wrongLogin, password: wrongPassword)
        XCTAssertTrue(viewModel.isValid == answerWaited)
    }
    
    func testGivenIsValidTrueWhenLoginRightAndPasswordFalseThenIsValidTrue(){
        viewModel.isValid = true
        let answerWaited = false
        let rightLogin = "vfdzfzu"
        let wrongPassword = "67898764"
        XCTAssertTrue(viewModel.isValid != answerWaited)
        viewModel.checkConnection(login: rightLogin, password: wrongPassword)
        XCTAssertTrue(viewModel.isValid == answerWaited)
        
    }
    
    func testGivenIsValidFalseWhenLoginAndPasswordAreRightThenIsValidTrue(){
        viewModel.isValid = false
        let answerWaited = true
        let rightLogin = "vfdzfzu"
        let rightPassword = "67898764"
        XCTAssertTrue(viewModel.isValid != answerWaited)
        viewModel.checkConnection(login: rightLogin, password: rightPassword)
        XCTAssertTrue(viewModel.isValid == answerWaited)
    }
}
