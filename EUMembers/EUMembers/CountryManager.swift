//
//  CountryManager.swift
//  EUMembers
//
//  Created by Hai Chu on 21/04/2023.
//

import Foundation

class CountryManager : ObservableObject {
    @Published var countries: [Country]
    
    init() {
        self.countries = [
            austria, france, finland, germany, greatBritain
        ]
    }
}
