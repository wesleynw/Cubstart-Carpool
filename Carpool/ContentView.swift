//
//  ContentView.swift
//  Carpool
//
//  Created by Wesley Weisenberger on 11/29/22.
//

import SwiftUI

struct ContentView: View {
    @State var placeholder: String = ""
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image(systemName: "car")
                    .padding(/*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
                    .imageScale(.large)
//                    .foregroundColor(.black)
                Text("Where would you like to go?")
                    .font(.title2)
                    .fontWeight(.black)
                HStack {
                    TextField(text: $placeholder, prompt: Text("Search for a location...")
                        .fontWeight(.heavy)) {}
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).textFieldStyle(.roundedBorder)
                }
                
                NavigationLink(destination: CarpoolView(), label: {Text("Submit")})
                
                Spacer()
                HStack {
                    Text("Searching for Carpools from")
                    Text("Berkeley").foregroundColor(.blue)
                    Image(systemName: "location.fill")
                        .imageScale(.small)
                        .foregroundColor(.blue)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
