//
//  User.swift
//  SwiftUIDemo1
//
//  Created by Guddu Gourav on 6/29/23.
//Desc: Created a property wrapper to covert string to Bool

import Foundation
struct User {
  let name: String
  let userId: Int
  let profileImage: String
  @BoolFromStringWrapper var isPrimeUser: Bool
  let userDescription: String
}

@propertyWrapper
struct BoolFromStringWrapper {
  var value: String
  var wrappedValue: Bool {
    get {
      value == "true" ? true : false
    }

  }

}
