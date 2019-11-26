//
//  UserSettings.swift
//  PassingAndSharingDataBetweenViewsInSwiftUI
//
//  Created by ramil on 26.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import Foundation

class UserSettings: ObservableObject {
    @Published var likes: Int = 0
    @Published var FacebookTextFields: String = ""
}
