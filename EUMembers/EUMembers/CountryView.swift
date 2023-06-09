//
//  CountryView.swift
//  EUMembers
//
//  Created by Hai Chu on 21/04/2023.
//

import SwiftUI

struct CountryView: View {
    @State var country: Country
    
    var body: some View {
        VStack(spacing: 50) {
            Text("\(country.name)")
                .font(.largeTitle)
            
            Image(country.code.lowercased())
                .resizable()
                .scaledToFit()
                .border(Color.black, width: 1)
            
            CountryDetailsView(country: country)
            Button(action: {
                if let url = URL(string: "https://en.wikipedia.org/wiki/\(country.name.replacing(" ", with: "_"))") {
                   UIApplication.shared.open(url)
                }
            }) {
                Text("Open country wikipedia")
            }
        }
        .padding()
    }
}

struct CountryView_Previews: PreviewProvider {
    static var previews: some View {
        CountryView(country: finland)
    }
}
