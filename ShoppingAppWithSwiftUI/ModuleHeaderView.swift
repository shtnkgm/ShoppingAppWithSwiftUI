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
        Text(title)
            .font(.title)
            .padding(.top, 10)
    }
}
