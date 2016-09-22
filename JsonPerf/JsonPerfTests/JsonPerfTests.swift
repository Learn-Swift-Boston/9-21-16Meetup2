//
//  JsonPerfTests.swift
//  JsonPerfTests
//
//  Created by Matt Dias on 9/20/16.
//  Copyright © 2016 Zipcar. All rights reserved.
//

import XCTest
import Freddy
@testable import JsonPerf

class JsonPerfTests: XCTestCase {

	var data: Data?

    override func setUp() {
        super.setUp()
		
		let path = Bundle.main.path(forResource: "response", ofType: "json")
		data = NSData(contentsOfFile: path!) as? Data
    }
    
    func testFreddyPerformance() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.

			do {

				let json = try JSON(data: self.data!)
				let items = try json.getArray(at: "items").map(Repo.init)

			} catch {
				XCTFail("oops!")
			}

//			print("print")
        }
    }

	func testNormalPerformance() {
		self.measure {
			do {


				guard let json = try JSONSerialization.jsonObject(with: self.data!) as? MyJSON,
					let items = json["items"] as? [MyJSON] else {
					XCTFail("bad JSON")
					return
				}

				let result = items.map{
					Repo(json: $0)
				}
			} catch {
				XCTFail("bad json")
			}


//			_ = Repo(json: )
		}
	}

    
}
