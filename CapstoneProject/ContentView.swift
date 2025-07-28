//
//  ContentView.swift
//  CapstoneProject
//
//  Created by Scholar on 7/28/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showNewItem = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Itinerary:")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                Button {
                    withAnimation {
                        showNewItem = true
                    }
                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
            .padding()
            Spacer()
        }
        if showNewItem {
            NewItineraryView()
        }
    }
}

#Preview {
    ContentView()
}
