//
//  EditProfileView.swift
//  TodayProfile
//
//  Created by 박지승 on 2020/12/03.
//

import SwiftUI

struct EditProfileView: View {
  @Binding var image: String
  @Binding var name: String
  @Binding var message: String
  var body: some View {
    VStack {
      Button(action: {
        // album
      }, label: {
        ProfileImageView(image: $image)
      })
      .padding()
      TextField("", text: $name)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
      TextField("", text: $message)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
      Button("확인") {
        //
      }.padding()
      Spacer()
    }
  }
}
