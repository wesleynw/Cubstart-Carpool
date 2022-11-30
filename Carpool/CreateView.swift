//
//  CreateView.swift
//  Carpool
//
//  Created by Wesley Weisenberger on 11/29/22.
//

import SwiftUI

struct CreateView: View {
    @State var origin: String = ""
    @State var destination: String = ""
    @State var carsize: String = ""
    @State var pcradius: String = ""

    
    var body: some View {
        NavigationView {
            List {
                TextField(text: $origin, prompt: Text("From...")) {
                    Text("aaa")
                }
                TextField(text: $destination, prompt: Text("To...")) {
                    Text("aaa")
                }
                TextField(text: $carsize, prompt: Text("Car size")) {
                    Text("aaa")
                }
                TextField(text: $pcradius, prompt: Text("Pickup Radius")) {
                    Text("aaa")
                }
                Button("Submit") {}
            }.navigationTitle("Create a Carpool")
        }
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
