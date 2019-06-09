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
            ModuleHeaderView(title: module.name)
            
            ScrollView(showsHorizontalIndicator: false) {
                HStack(alignment: .top, spacing: 16) {
                    ForEach(module.items.identified(by: \.name)) { item in
                        NavigationButton(
                        destination: ItemDetailView(item: item)) {
                            ItemView(item: item)
                                .border(Color.gray, width: 0)
                                .cornerRadius(8)
                                .shadow(radius: 4)
                        }
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
