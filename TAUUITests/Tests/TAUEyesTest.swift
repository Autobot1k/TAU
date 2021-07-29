//
//  TAUEyesTest.swift
//  TAUUITests
//
//  Created by Eugene Mozgovoy on 7/27/21.
//  Copyright © 2021 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest
import EyesXCUI


class TAUEyesTest: TAUUITestBase{
    
    func testTAUWithEyesXCUI() {

        // Start the test.
        eyes.open(withApplicationName: "TAU", testName: "Live DEMO EyesXCUI")

        // Visual checkpoint #1.
        eyes.check(withTag: "TAU", andSettings: Target.window().timeout(inSeconds: 5))

        // Click the "Click me!" button.
        XCUIApplication().buttons["enrollButton"].tap()

        // Visual checkpoint #2.
        eyes.checkWindow(withTag: "Please Enter City")

    
    }
}
