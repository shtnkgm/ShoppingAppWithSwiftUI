//
//  HomeSearchBar.swift
//  ShoppingAppWithSwiftUI
//
//  Created by Shota Nakagami on 2019/06/09.
//  Copyright © 2019 Shota Nakagami. All rights reserved.
//

import SwiftUI

struct HomeSearchBar: View {
    @Binding var text: String
    @State var action: () -> Void
    
    var body: some View {
        TextField(
            $text,
            placeholder:
            Text("何かお探しですか?").color(.gray)
        )
            .textFieldStyle(.roundedBorder)
            .padding(.horizontal, 16)
        
    }
}
