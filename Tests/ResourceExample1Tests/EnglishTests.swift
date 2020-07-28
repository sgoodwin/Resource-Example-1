//
//  EnglishTests.swift
//
//
//  Created by Samuel Goodwin on 7/27/20.
//

import XCTest
@testable import ResourceExample1

final class EnglishTests: XCTestCase {
    func testBasicWord() {
        let transliterator = Transliterator(language: .english)
        let text = "Billy"
        
        
        XCTAssertEqual(text, transliterator.transliterate(source: text))
    }
    
    func testFullSentence() {
        let transliterator = Transliterator(language: .english)
        let text = "The quick brown fox jumps over the lazy dog"
        
        
        XCTAssertEqual(text, transliterator.transliterate(source: text))
    }
    
    func testLargerText() {
        let transliterator = Transliterator(language: .english)
        let url = Bundle.main.url(forResource: "example_text_english", withExtension: "txt")!
        let data = try! Data(contentsOf: url)
        let text = String(data: data, encoding: .utf8)!
        
        XCTAssertEqual(text, transliterator.transliterate(source: text))
    }

    static var allTests = [
        ("testBasicWord", testBasicWord),
        ("testFullSentence", testFullSentence)
    ]
}
