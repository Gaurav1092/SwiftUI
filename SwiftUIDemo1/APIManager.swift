//
//  APIManager.swift
//  SwiftUIDemo1
//
//  Created by Guddu Gourav on 7/1/23.
//

import Foundation
import Combine

class APIManager {

  let baseUrl = URL(string: "")
  func getProductList() -> AnyPublisher<[User], Never> {

    /*
    let datatask = URLSession.shared.dataTask(with: baseUrl!){ data, response, error in

    }

    datatask.resume()

    */

    sleep(5)
    return Just(createUserModel()).eraseToAnyPublisher()
  }

  func createUserModel() -> [User] {
    let user1 = User(name: "Guddu", userId: 1, profileImage: "", isPrimeUser: BoolFromStringWrapper(value: "true"), userDescription: "Data from API Manager.")
    let user2 = User(name: "Gourav", userId: 2, profileImage: "", isPrimeUser: BoolFromStringWrapper(value: "false"), userDescription: "Scroll view has a parameter to change the scroll direction from the default vertical scrolling to horizontal. We also have to use a horizontal stack inside the ScrollView otherwise the layout directions don't match. You could use LazyHStack or LazyHGrid.")
    let user3 = User(name: "Guddu1", userId: 3, profileImage: "", isPrimeUser: BoolFromStringWrapper(value: "false"), userDescription: "Scroll view has a parameter to change the scroll direction from the default vertical scrolling to horizontal. We also have to use a horizontal stack inside the ScrollView otherwise the layout directions don't match. You could use LazyHStack or LazyHGrid.")
    let user4 = User(name: "Gourav2", userId: 4, profileImage: "", isPrimeUser: BoolFromStringWrapper(value: "true"), userDescription: "Scroll view has a parameter to change the scroll direction from the default vertical scrolling to horizontal. We also have to use a horizontal stack inside the ScrollView otherwise the layout directions don't match. You could use LazyHStack or LazyHGrid.")

    let userList = [user1, user2, user3, user4]
    return userList

  }
}
