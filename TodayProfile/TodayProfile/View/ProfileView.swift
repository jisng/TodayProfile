//
//  ProfileView.swift
//  TodayProfile
//
//  Created by 박지승 on 2020/11/30.
//

import SwiftUI

struct ProfileView: View {
  @ObservedObject var vm = ProfileViewModel()
  
  var body: some View {
    NavigationView {
      ZStack {
        BackgroundView(image: $vm.backgroundImage)
        VStack {
          Spacer(minLength: UIScreen.main.bounds.height/4)
          VStack {
            ProfileImageView(image:$vm.profileImage)
            Text(vm.name)
              .padding(4)
            Text(vm.message)
              .padding(4)
            Rectangle()
              .frame(width: UIScreen.main.bounds.width, height: 0.4, alignment: .center)
              .foregroundColor(.gray)
            NavigationLink("프로필 편집",
                           destination:
                            EditProfileView(image: $vm.profileImage,
                                            name: $vm.name,
                                            message: $vm.message)
            ).padding()
          }.padding(8)
        }
      }
    }
  }
}

struct ProfileView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      ProfileView()
    }
  }
}
