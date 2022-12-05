//
//  PostCell.swift
//
//  Created by Wesley Weisenberger on 12/5/22.
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
            VStack {
                HStack {
                    Text(driverName)
                        .font(.title)
                        .fontWeight(.heavy)
                    Spacer()
                }
                HStack {
                    VStack {
                        Image(systemName: "a.circle")
                        Text("")
                        Image(systemName: "arrow.down")
                        Text("")
                        Image(systemName: "b.circle")
                    }
                    VStack {
                        HStack {
                            Text(origin)
                                .foregroundColor(Color.blue)
                            Spacer()
                        }
                        Text("")
                        HStack {
                            Image(systemName: "gauge.medium")
                            Text("690 miles")
                            Spacer()
                        }
                        Text("")
                        HStack {
                            Text(destination)
                                .foregroundColor(Color.blue)
                            Spacer()
                        }
                    }
                    Spacer()
                }
                Text("")
                HStack {
                    Text("2 of 3 Seats Available")
                    Spacer()
                    
                    Button {
                        UIApplication.shared.open(URL(string: "sms://800-555-1212")!)
                    } label: {
                        Image(systemName: "plus.message")
                            .foregroundColor(.blue)
                    }.buttonStyle(PlainButtonStyle())
                }
            }
            Spacer()
        }
    }
    
    struct Previews_PostCell_Previews: PreviewProvider {
        static var previews: some View {
            List {
                PostCell(driverName: "John Smith", destination: "Anchorage, Alaska", origin: "Berkeley, California", seats: 3)
            }
        }
    }
}
