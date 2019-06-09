//
//  ModuleHeaderView.swift
//  ShoppingAppWithSwiftUI
//
//  Created by Shota Nakagami on 2019/06/08.
//  Copyright © 2019 Shota Nakagami. All rights reserved.
//

import SwiftUI

struct ModuleHeaderView : View {
    let title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.headline)
                .padding(.top, 8)
            Spacer()
            NavigationButton(
            destination: MoreInfoView()) {
                Text("もっと見る")
                    .font(.subheadline)
                    .color(Color.blue)
                }.padding(.top, 8)
        }
    }
}
