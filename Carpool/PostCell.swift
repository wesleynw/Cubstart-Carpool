//
//  CustomCell.swift
//  Shopping List 2
//
//  Created by Tony Hong on 3/27/22.
//

import SwiftUI
import MapKit

struct mapCell: View {
    var body: some View {
        Map(coordinateRegion: .constant(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))), interactionModes: [])
            .frame(width: 60, height: 60)
    }
}






struct PostCell: View {

    var driverName: String
    
    var destination: String
    
    var origin: String
    
    var seats: Int
    
    var body: some View {
            HStack {
                VStack{
                    Text(driverName)
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    
                    Spacer()
                    
                    HStack{
                        Text("is driving from ")
                        Text("\(destination)")
                            .fontWeight(.heavy)
                    }
                    
                    Spacer()
                    
                    HStack{
                        Text("to ")
                        Text("\(origin)")
                            .fontWeight(.heavy)
                    }
                    
                    Spacer()
                    
                    HStack{
                        Text("\(seats)")
                            .fontWeight(.heavy)
                        Text(" seats left")
                    }
                    
                    Spacer()
                    
                    Image(systemName: "plus.message")
//                        .imageScale(.small)
                        .foregroundColor(.blue)
                    
                }
                
                
                Spacer()
                
                mapCell()
            }
    }
}

struct PhoneNumberView: View {
    
    @State var phoneNumber: String = "310-123-7890"
    
    var body: some View {
            Text("\(phoneNumber)")

    }
    
}
    
    
    
//NavigationLink(destination: ResultView(prob: $probability, feedback: $text), isActive: $calculate) { EmptyView() } .padding()
