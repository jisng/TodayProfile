//
//  ProfileViewModel.swift
//  TodayProfile
//
//  Created by 박지승 on 2020/12/04.
//

import Foundation
import Combine

class ProfileViewModel: ObservableObject {
  @Published var backgroundImage = "Background"
  @Published var profileImage = "Profile"
  @Published var name = "이름"
  @Published var message = "상태 메세지"
  
  init() { }
  
}
