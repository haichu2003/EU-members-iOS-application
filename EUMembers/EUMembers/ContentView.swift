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
            List {
                Section("Current countries") {
                    ForEach(manager.currentCountries) { country in
                        HStack {
                            Image(country.code.lowercased())
                                .resizable()
                                .frame(width: 32, height: 19.6)
                            NavigationLink(destination: CountryView(country: country)) {
                                Text(country.name)
                                if country.isMember {
                                    Image(systemName: "star")
                                        .font(.system(size: 28.0))
                                        .foregroundColor(.yellow)
                                }
                                
                                if country.isEuroZone {
                                    Text("\u{20AC}")
                                        .font(.system(size: 28.0))
                                }
                            }
                        }
                    }
                }
                Section("Past countries") {
                    ForEach(manager.pastCountries) { country in
                        NavigationLink(destination: CountryView(country: country)) {
                            Text(country.name)
                            Image(country.code.lowercased())
                                .resizable()
                                .frame(width: 32, height: 19.6)
                            if country.isMember {
                                Image(systemName: "star")
                                    .font(.system(size: 28.0))
                                    .foregroundColor(.yellow)
                            }
                            
                            if country.isEuroZone {
                                Text("\u{20AC}")
                                    .font(.system(size: 28.0))
                            }
                        }
                    }
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
