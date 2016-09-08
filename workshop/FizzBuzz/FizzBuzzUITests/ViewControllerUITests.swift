import XCTest

class ViewControllerUITests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
//        let app = XCUIApplication()
//        app.launchEnvironment = ["animations": "0"]
//        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    
    func testTapNumberButtonIncrementsScore() {
        let app = XCUIApplication()
        app.launchEnvironment = ["animations": "0"]
        app.launch()
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }
    
    func testTapNumberButtonTwiceIncrementsTo2() {
        let app = XCUIApplication()
        app.launchEnvironment = ["animations": "0"]
        app.launch()
        let numberButton = app.buttons["numberButton"]
    
        numberButton.tap()
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "2")
    }

    func testTapFizzButtonIncrementsTo3() {
        let app = XCUIApplication()
        app.launchEnvironment = ["animations": "0"]
        app.launch()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "3")
    }
    
    func testTapBuzzButtonIncrementsTo5() {
        let app = XCUIApplication()
        app.launchEnvironment = ["animations": "0"]
        app.launch()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "5")
    }
    
    func testTapFizzBuzzButtonIncrementsTo15() {
        let app = XCUIApplication()
        app.launchEnvironment = ["animations": "0"]
        app.launch()
        let numberButton = app.buttons["numberButton"]
        let fizzbuzzButton = app.buttons["fizzBuzzButton"]
        
        playTo14()
        
        fizzbuzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "15")
    }
    
    func playTo14() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        buzzButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
    }
    
}

//extension XCUIElement {
//    func forceTapElement() {
//        if self.hittable {
//            self.tap()
//        }
//        else {
//            let coordinate: XCUICoordinate = self.coordinateWithNormalizedOffset(CGVectorMake(0.5, 0.5))
//            coordinate.tap()
//        }
//    }
//}
