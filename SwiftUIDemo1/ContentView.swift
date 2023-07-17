//
//  ContentView.swift
//  SwiftUIDemo1
//
//  Created by Guddu Gourav on 9/9/22.
//

import SwiftUI

struct ContentView: View {
  @State private var name = ""

  var body: some View {
    NavigationView {

      VStack(spacing: 50) {
        Text("My name is \(name)").font(.system(size: 15))
          //.frame(width: 320)
          .foregroundColor(.black)
          //.background(.gray)

        LoginForm(name: $name)

        NavigationLink {
          let user1 = User(name: "Guddu", userId: 1, profileImage: "", isPrimeUser: BoolFromStringWrapper(value: "true"), userDescription: "Scroll view has a parameter to change the scroll direction from the default vertical scrolling to horizontal. We also have to use a horizontal stack inside the ScrollView otherwise the layout directions don't match. You could use LazyHStack or LazyHGrid.")
          let user2 = User(name: "Gourav", userId: 2, profileImage: "", isPrimeUser: BoolFromStringWrapper(value: "false"), userDescription: "Scroll view has a parameter to change the scroll direction from the default vertical scrolling to horizontal. We also have to use a horizontal stack inside the ScrollView otherwise the layout directions don't match. You could use LazyHStack or LazyHGrid.")
          let user3 = User(name: "Guddu1", userId: 3, profileImage: "", isPrimeUser: BoolFromStringWrapper(value: "false"), userDescription: "Scroll view has a parameter to change the scroll direction from the default vertical scrolling to horizontal. We also have to use a horizontal stack inside the ScrollView otherwise the layout directions don't match. You could use LazyHStack or LazyHGrid.")
          let user4 = User(name: "Gourav2", userId: 4, profileImage: "", isPrimeUser: BoolFromStringWrapper(value: "true"), userDescription: "Scroll view has a parameter to change the scroll direction from the default vertical scrolling to horizontal. We also have to use a horizontal stack inside the ScrollView otherwise the layout directions don't match. You could use LazyHStack or LazyHGrid.")

          let userList = [user1, user2, user3, user4]
          ProductListView(viewModel: ProductListViewModel(userList: userList))
        } label: {
          Text("Navigate1")
        }


      }.font(.headline)
        .navigationTitle("Login")
        .navigationBarTitleDisplayMode(.inline)
        .padding(20)
    }



  }
}

struct LoginForm: View {
 @Binding var name: String

  var body: some View {

    TextField("Name", text: $name,
              onEditingChanged: { (isBegin) in
    },
              onCommit: {
    }
    )
    .textFieldStyle(.roundedBorder)

    Button {

    } label: {
      Text("Login").font(.system(size: 22))
        .foregroundColor(.white)
    }.frame(width: 320, height: 44, alignment: .center)
      .background(.yellow)
      .cornerRadius(20)
      .disabled(self.name.count < 4)
  }

  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
