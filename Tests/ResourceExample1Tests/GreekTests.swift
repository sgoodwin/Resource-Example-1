//
//  GreekTests.swift
//
//
//  Created by Samuel Goodwin on 7/27/20.
//

import XCTest
@testable import ResourceExample1

final class GreekTests: XCTestCase {
    func testSomeLetters() {
        let transliterator = Transliterator(language: .greek)
        let text = "βγαι"
        
        
        XCTAssertEqual("BGAI", transliterator.transliterate(source: text))
    }

    static var allTests = [
        ("testSomeLetters", testSomeLetters)
    ]
}
