//
//  SessionListViewModel.swift
//  happy-trackerTests
//
//  Created by Mirna Helmy on 4/5/22.
//

import XCTest
@testable import happy_tracker

class SessionListViewModelTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    
    func testSessionListViewModel_RecordModel_shouldBeEmpty() {
        let vm = SessionListViewModel()
        XCTAssert(vm.sessions.isEmpty)

    }



}
