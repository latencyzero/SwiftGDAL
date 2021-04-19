import XCTest

import GDALTests

var tests = [XCTestCaseEntry]()
tests += GDALTests.allTests()
XCTMain(tests)
