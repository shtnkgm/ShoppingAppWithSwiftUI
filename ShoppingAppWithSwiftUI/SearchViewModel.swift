//
//  SearchViewModel.swift
//  ShoppingAppWithSwiftUI
//
//  Created by Shota Nakagami on 2019/06/09.
//  Copyright © 2019 Shota Nakagami. All rights reserved.
//

import SwiftUI
import Combine

final class SearchViewModel: BindableObject {
    var didChange = PassthroughSubject<SearchViewModel, Never>()
    
    var text = "" {
        didSet { didChange.send(self) }
    }
    
    func search() {
        print("search: " + text)
    }
}
