//
//  ContentView.swift
//  EUMembers
//
//  Created by Jere Käpyaho (TAMK) on 31.3.2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var manager: CountryManager
    
    var body: some View {
        NavigationStack {
            List(manager.countries) { country in
                NavigationLink(country.name) {
                    CountryView(country: country)
                }
            }
            .navigationTitle("Countries")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CountryManager())
    }
}
