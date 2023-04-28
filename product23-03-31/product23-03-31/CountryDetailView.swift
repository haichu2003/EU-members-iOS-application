//
//  CountryDetailView.swift
//  product23-03-31
//
//  Created by Hai Chu on 14/04/2023.
//

import SwiftUI
struct CountryDetailView: View {
    @Binding var country: Country
    var body: some View {
        VStack {


            HStack {
                if (country.isMember) {
                    Text("\(country.name) is a member of the EU")
                        .font(.system(size: 24))
                    Image(systemName: "star")
                        .foregroundColor(.yellow)
                        .font(.system(size: 24))
                } else {
                    Text("\(country.name) is not a member of the EU")
                }
            }
            Text("\(country.name)")
            Text("Area: \(country.area)km\u{B2}")
         
            
        }
    }
}
struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        //ContentView(country: Country(code: "FI", name: "Finland", area: 358_455, population: 5_566_000))
        
        CountryDetailView(country: .constant(finland))
    }
}
