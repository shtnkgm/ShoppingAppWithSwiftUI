//
//  HomeView.swift
//  ShoppingAppWithSwiftUI
//
//  Created by Shota Nakagami on 2019/06/06.
//  Copyright © 2019 Shota Nakagami. All rights reserved.
//

import SwiftUI

struct HomeView : View {
    @ObjectBinding var searchViewModel = SearchViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HomeSearchBar(text: searchViewModel[\.text]) {
                    self.searchViewModel.search()
                }
                List(moduleData.identified(by: \.name)) { module in
                    ModuleView(module: module)
                }
                }.navigationBarTitle(Text("Shopping"))
        }
    }
}

//#if DEBUG
//struct ContentView_Previews : PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//#endif
