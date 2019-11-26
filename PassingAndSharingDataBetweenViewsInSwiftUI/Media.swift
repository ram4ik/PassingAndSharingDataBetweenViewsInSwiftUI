//
//  Media.swift
//  PassingAndSharingDataBetweenViewsInSwiftUI
//
//  Created by ramil on 26.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import Foundation
import SwiftUI

struct TotalLikes: View {
    @EnvironmentObject var userSettings: UserSettings
    
    var body: some View {
        HStack {
            Text("Total likes: ")
            Text("\(userSettings.likes)")
        }
    }
}

struct Facebook: View {
    @EnvironmentObject var userSettings: UserSettings
    
    var body: some View {
        VStack {
            Text("Facebook")
            Button(action: {
                self.userSettings.likes += 1
            }) {
                Image(systemName: "hand.thumbsup")
            }
            TextField("Insert", text: self.$userSettings.FacebookTextFields)
        }
    }
}

struct Twitter: View {
    @EnvironmentObject var userSettings: UserSettings
    
    var body: some View {
        VStack {
            Text("Twitter")
            Button(action: {
                self.userSettings.likes += 1
            }) {
                Image(systemName: "hand.thumbsup")
            }
            Text(self.userSettings.FacebookTextFields)
        }
    }
}
