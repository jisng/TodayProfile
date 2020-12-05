//
//  BackgroundView.swift
//  TodayProfile
//
//  Created by 박지승 on 2020/12/04.
//

import SwiftUI

struct BackgroundView: View {
  @Binding var image: String
    var body: some View {
      Image(image)
        .resizable()
        .renderingMode(.original)
        .scaledToFill()
        .edgesIgnoringSafeArea(.all)
    }
}
