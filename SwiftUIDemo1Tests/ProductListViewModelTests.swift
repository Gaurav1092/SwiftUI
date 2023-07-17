//
//  ProductListViewModelTest.swift
//  SwiftUIDemo1Tests
//
//  Created by Guddu Gourav on 7/1/23.
//

import XCTest
@testable import SwiftUIDemo1

final class ProductListViewModelTests: XCTestCase {
  let viewModel = ProductListViewModel(userList: [User(name: "test", userId: 1, profileImage: "", isPrimeUser: BoolFromStringWrapper(value: "false"), userDescription: "Test Description")])

  func testLoadData() {

    viewModel.loadData()

  }

  func testCreateModel() {
    let users = viewModel.createUserModel()
    XCTAssertEqual(users.count, 4)

  }
}
