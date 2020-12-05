//
//  ProfileImageView.swift
//  TodayProfile
//
//  Created by 박지승 on 2020/12/03.
//

import SwiftUI

struct ProfileImageView: View {
  @Binding var image: String
    var body: some View {
      Image(image)
        .resizable()
        .scaledToFill()
        .frame(width: 120, height: 120, alignment: .center)
        .cornerRadius(20)
        .clipped()
    }
}
