//
//  MoreInfoView.swift
//  ShoppingAppWithSwiftUI
//
//  Created by Shota Nakagami on 2019/06/07.
//  Copyright © 2019 Shota Nakagami. All rights reserved.
//

import SwiftUI

struct MoreInfoView : View {
    
    var body: some View {
        NavigationView {
        VStack(alignment: .leading) {
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                    .font(.body)
                    .lineLimit(nil)
        }
        }.navigationBarTitle(Text("More Info"))
    }
}
