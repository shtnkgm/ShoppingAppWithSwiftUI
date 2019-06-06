//
//  ModuleView.swift
//  ShoppingAppWithSwiftUI
//
//  Created by Shota Nakagami on 2019/06/06.
//  Copyright © 2019 Shota Nakagami. All rights reserved.
//

import SwiftUI

struct ModuleView : View {
    let module: Module
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(module.name)
                    .font(.headline)
                    .padding(.top, 8)
                Spacer()
                Text("もっと見る")
                    .font(.subheadline)
                    .color(Color.blue)
                    .padding(.top, 8)
            }
            
            ScrollView(showsHorizontalIndicator: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(module.items.identified(by: \.name)) { item in
                        ItemView(item: item)
                    }
                }
                }
                .frame(height: 160)
        }
    }
}

//#if DEBUG
//struct ModuleView_Previews : PreviewProvider {
//    static var previews: some View {
//        ModuleView()
//    }
//}
//#endif
