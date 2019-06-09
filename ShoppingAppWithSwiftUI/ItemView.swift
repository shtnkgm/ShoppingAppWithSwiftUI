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
                .frame(width: 90, height: 90)
            Text(item.name)
                .color(.primary)
                .font(.body)
                .lineLimit(nil)
            Text("\(item.price)円")
                .font(.caption)
                .color(.gray)
        }.frame(width: 90)
            .padding(.all, 8)
    }
}

//#if DEBUG
//struct ItemView_Previews : PreviewProvider {
//    static var previews: some View {
//        ItemView(item: <#Item#>)
//    }
//}
//#endif
