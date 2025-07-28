//
//  NewItineraryView.swift
//  CapstoneProject
//
//  Created by Scholar on 7/28/25.
//

import SwiftUI

struct NewItineraryView: View {
    var body: some View {
        VStack {
            Text("Items Needed:")
            TextField("Enter the item needed...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is it essential?")
                Button {

                } label: {
                        Text("Save")
                }
            }
        }
        .padding()
    }
}

#Preview {
    NewItineraryView()
}
