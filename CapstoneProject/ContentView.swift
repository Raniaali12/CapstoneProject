//
//  ContentView.swift
//  CapstoneProject
//
//  Created by Scholar on 7/28/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State private var showNewItem = false
    @Query var toDos: [ItemNeeded]
    
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
            List {
                ForEach(toDos) { toDoItem in
                    if toDoItem.isImportant {
                        Text("‼️ " + toDoItem.title)
                            .fontWeight(.bold)
                    } else {
                        Text(toDoItem.title)
                    }
                }
            }
            .listStyle(.plain)
        }
        if showNewItem {
            NewItineraryView(toDoItem: ItemNeeded(title: "", isImportant: false), showNewTask: $showNewItem)
        }    }
}

#Preview {
    ContentView()
        .modelContainer(for: ItemNeeded.self, inMemory: true)
}
