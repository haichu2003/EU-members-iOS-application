//
//  ContentView.swift
//  product23-03-31
//
//  Created by Hai Chu on 31/03/2023.
//

import SwiftUI

let finland = Country(code: "FI", name: "Finland", area: 358_455, population: 5_566_000, isMember: true)
let vietnam = Country(code: "VN", name: "Vietnam", area: 331_690, population: 100_000_000, isMember: false)

struct ContentView: View {
    @State var country: Country
    
    //let finland = Country(code: "FI", name: "Finland", area: 358_455, population: 5_566_000)
    var body: some View {
        VStack {
            Image("\(country.code.lowercased())")
                .resizable()
                .scaledToFit()
                .border(Color.black, width: 1)
            
            .font(.title2)
            CountryDetailView(country: $country)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //ContentView(country: Country(code: "FI", name: "Finland", area: 358_455, population: 5_566_000))
        
        ContentView(country: finland)
    }
}

