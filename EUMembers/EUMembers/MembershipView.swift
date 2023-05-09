//
//  MembershipView.swift
//  EUMembers
//
//  Created by Jere Käpyaho (TAMK) on 14.4.2023.
//

import SwiftUI

struct MembershipView: View {
    @Binding var country: Country
    
    var body: some View {
        VStack {
            if country.isMember {
                HStack {
                    Image(systemName: "star")
                        .font(.system(size: 28.0))
                        .foregroundColor(.yellow)
                    Text(": \(country.name) is a member of the EU")
                }
            }
            
            if country.isEuroZone {
                HStack {
                    Text("\u{20AC}")
                        .font(.system(size: 28.0))
                    Text(": \(country.name) is in the Euro Zone")
                }
            }
        }
    }
}
