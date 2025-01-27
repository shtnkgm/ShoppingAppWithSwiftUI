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
                HStack(alignment: .top) {
                    ForEach(module.items.identified(by: \.name)) { item in
                        NavigationButton(
                        destination: ItemDetailView(item: item)) {
                            ItemView(item: item)
                                .padding(.all, 8)
                        }
                    }
                }
                }
                .frame(height: 210)
                .shadow(radius: 20)
            
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
