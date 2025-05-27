//
//  JenkinsTestingTests.swift
//  JenkinsTestingTests
//
//  Created by Jesse Steinberg on 5/25/25.
//

import XCTest
@testable import JenkinsTesting

final class JenkinsTestingTests: XCTestCase {
    
    func testExample() {
        let sum = 2 + 2
        XCTAssertEqual(sum, 4, "Math still works!")
    }
    
    func testFailedExample() {
        let sum = 5 + 3
        XCTAssertEqual(sum, 20, "Math isn't working right")
    }
}
