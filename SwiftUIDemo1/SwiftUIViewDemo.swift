//
//  SwiftUIViewDemo.swift
//  SwiftUIDemo1
//
//  Created by Guddu Gourav on 9/9/22.
//

import SwiftUI

struct SwiftUIViewDemo: View {
  @Environment(\.presentationMode) var presentationMode

    var body: some View {
      VStack {
        Button("Cancel") {
          //Button action
          presentationMode.wrappedValue.dismiss()
        }

      }

    }
}

struct SwiftUIViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewDemo()
    }
}
