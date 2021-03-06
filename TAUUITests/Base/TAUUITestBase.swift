//
//  TAUUITestBase.swift
//  TAUUITests
//
//  Created by Shashikant Jagtap on 10/02/2019.
//  Copyright © 2019 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest
import EyesXCUI

class TAUUITestBase: XCTestCase {
    
    var app = XCUIApplication()
    
    var eyes = Eyes()

    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
        eyes.apiKey = "kVPtrJCadNssXIC5FpCOT3HcZvkIcJ57pl5FEJu7KSk110"
       
    }
    
    override func tearDown() {
        super.tearDown()
        app.terminate()
        // End the test.
        do {
            try eyes.close()
        } catch {
            eyes.abortIfNotClosed()
        }
     
    }
}
