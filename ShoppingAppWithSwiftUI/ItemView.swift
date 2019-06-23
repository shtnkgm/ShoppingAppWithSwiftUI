//
//  ItemView.swift
//  ShoppingAppWithSwiftUI
//
//  Created by Shota Nakagami on 2019/06/06.
//  Copyright © 2019 Shota Nakagami. All rights reserved.
//

import SwiftUI

struct ItemView : View {
    let item: Item
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(item.imageName)
                .renderingMode(.original)
                .resizable()
                .clipped()
                .frame(width: 140, height: 140)
            VStack(alignment: .leading) {
                Text(item.name)
                    .color(.primary)
                    .font(.caption)
                    .lineLimit(nil)
                Text("¥\(item.price)")
                    .font(.caption)
                    .color(.secondary)
                }.padding(.horizontal, 10)
            }
            .padding(.bottom, 10)
            .background(Color.white)
            .cornerRadius(12)
        
    }
}

//#if DEBUG
//struct ItemView_Previews : PreviewProvider {
//    static var previews: some View {
//        ItemView(item: <#Item#>)
//    }
//}
//#endif
