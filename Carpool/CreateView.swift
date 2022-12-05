//
//  CreateView.swift
//  Carpool
//
//  Created by Wesley Weisenberger on 11/29/22.
//

import SwiftUI

struct CreateView: View {
    @State var placeholder: String = ""
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        List {
            TextField(text: $placeholder, prompt: Text("Name...")) {
                Text("aaa")
            }
            TextField(text: $placeholder, prompt: Text("From...")) {
                Text("aaa")
            }
            TextField(text: $placeholder, prompt: Text("To...")) {
                Text("aaa")
            }
            TextField(text: $placeholder, prompt: Text("Car size")) {
                Text("aaa")
            }
            TextField(text: $placeholder, prompt: Text("Pickup Radius")) {
                Text("aaa")
            }
        }.navigationTitle("Create a Carpool")
            .navigationBarItems(trailing: Button(action : {
                self.mode.wrappedValue.dismiss()
            }){
                Text("Save")
            })
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
