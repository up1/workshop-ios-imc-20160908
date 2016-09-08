import XCTest
@testable import Hello

class CircularBufferTest: XCTestCase {
    
    let buffer = CircularBuffer()

    func testCreateNewBuffer_ShouldBeEmpty() {
        XCTAssertTrue(buffer.checkEmpty())
    }
    
    func testCreateNewBufferAndAddA_ShouldNotEmpty() {
        //Arrange
        //Action
        buffer.add("A")
        //Assert
        XCTAssertFalse(buffer.checkEmpty())
    }
    
    func testCreateNewBufferAndAddAAndRemove_ShouldGotA() {
        buffer.add("A")
        XCTAssertEqual(buffer.remove(), "A")
    }
    
    func testCreateNewBufferAndAddBAndRemove_ShouldGotB() {
        buffer.add("B")
        XCTAssertEqual(buffer.remove(), "B")
    }
    
    func testCreateNewBufferAndAddABAndRemoveAll_ShouldGotAB() {
        buffer.add("A")
        buffer.add("B")
        XCTAssertEqual(buffer.remove(), "A")
        XCTAssertEqual(buffer.remove(), "B")
    }
    
    func testCreateNewBufferAndAddABAndRemoveAll_ShouldEmptyBuffer() {
        buffer.add("A")
        buffer.add("B")
        buffer.remove()
        buffer.remove()
        XCTAssertTrue(buffer.checkEmpty())
    }
    
    func testXXX() {
        buffer.add("A")
        buffer.add("B")
        buffer.remove()
        buffer.add("B")
        buffer.remove()
        buffer.add("B")
        buffer.remove()
        buffer.remove()
        XCTAssertTrue(buffer.checkEmpty())
    }

}
