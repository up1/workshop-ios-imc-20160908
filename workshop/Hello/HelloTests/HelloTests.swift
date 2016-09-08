import XCTest
@testable import Hello

class HelloTests: XCTestCase {
    
    func testSayHello_ShouldReturnHelloWorld() {
        let hello = Hello()
        let actualResult = hello.say()
        XCTAssertEqual( actualResult, "Hello World")
    }
    
    func testSay2Hello_ShouldReturnHelloWorld() {
        let hello = Hello()
        let actualResult = hello.say2()
        XCTAssertEqual( actualResult, "Hello World")
    }
    
}
