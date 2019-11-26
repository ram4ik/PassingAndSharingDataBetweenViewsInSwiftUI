//
//  ContentView.swift
//  PassingAndSharingDataBetweenViewsInSwiftUI
//
//  Created by ramil on 26.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selected = 0
    
    var body: some View {
        VStack {
            TotalLikes()
            TabView(selection: $selected) {
                Facebook().tabItem { Text("Facebook") }.tag(1)
                Twitter().tabItem { Text("Twitter") }.tag(2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
