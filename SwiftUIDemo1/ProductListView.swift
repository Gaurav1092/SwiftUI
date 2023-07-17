//
//  ProductListView.swift
//  SwiftUIDemo1
//
//  Created by Guddu Gourav on 6/29/23.
//

import SwiftUI

struct ProductListView: View {
  @ObservedObject var viewModel: ProductListViewModel
    var body: some View {

      VStack {
        HStack {
          NavigationLink(destination: ContentView()) {
            Text("Next")
              .foregroundColor(.black)

          }

          Button("Add") {
            viewModel.addUser()
          }
        }


        List {
          ForEach(viewModel.userList, id: \.userId) { user in

            NavigationLink(destination: SwiftUIViewDemo()) {

              HStack(spacing: 10) {
                Image("Plus")

                VStack(alignment: .leading, spacing: 10) {
                  Text(user.name)
                    .frame(maxWidth: .infinity, alignment: .leading)
                  Text("\(user.userDescription)")
                }

              }

            }

          }

        }
      }
      .onAppear {
        viewModel.loadData()
      }
    }

}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
      let user = User(name: "Test2 Scroll view has a parameter to change the scroll direction from the default vertical scrolling to horizontal. We also have to use a horizontal", userId: 1, profileImage: "", isPrimeUser: BoolFromStringWrapper(value: "false"), userDescription: "Scroll view has a parameter to change the scroll direction from the default vertical scrolling to horizontal. We also have to use a horizontal stack inside the ScrollView otherwise the layout directions don't match. You could use LazyHStack or LazyHGrid.")
      let user1 = User(name: "Test1", userId: 2, profileImage: "", isPrimeUser: BoolFromStringWrapper(value: "false"), userDescription: "Scroll view has a parameter to change the scroll direction from the default vertical scrolling to horizontal. We also have to use a horizontal stack inside the ScrollView otherwise the layout directions don't match. You could use LazyHStack or LazyHGrid.")

      ProductListView(viewModel: ProductListViewModel(userList: [user, user1]))
    }
}
