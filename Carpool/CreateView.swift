//
//  CreateView.swift
//  Carpool
//
//  Created by Wesley Weisenberger on 11/29/22.
//

import SwiftUI

struct CreateView: View {
    @State var driverName: String = ""
    @State var driverOrigin: String = ""
    @State var driverDestination: String = ""
    @State var driverCarSize: String = ""
    @State var driverPickupRad: String = ""

    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        List {
            TextField(text: $driverName, prompt: Text("Name...")) {
                Text("aaa")
            }
            TextField(text: $driverOrigin, prompt: Text("From...")) {
                Text("aaa")
            }
            TextField(text: $driverDestination, prompt: Text("To...")) {
                Text("aaa")
            }
            TextField(text: $driverCarSize, prompt: Text("Car size")) {
                Text("aaa")
            }
            TextField(text: $driverPickupRad, prompt: Text("Pickup Radius")) {
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
