import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Resource_Example_1Tests.allTests),
    ]
}
#endif
