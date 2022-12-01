import SwiftUI

class CarItems: Identifiable {
    
    var driverName: String
    
    var destination: String
    
    var origin: String
    
    var seats: Int
    
    init(driverName: String, destination: String, origin: String, seats: Int) {
        
        self.driverName = driverName
        
        self.destination = destination
        
        self.origin = origin
        
        self.seats = seats
        
    }
    
}

struct CarpoolView: View {
    
    @State var tempDriverName: String = ""
    
    @State var tempDestination: String = ""
    
    @State var tempOrigin: String = ""
    
    @State var tempSeats: Int = 3
    
    @State var list = [
        CarItems(driverName: "John Smith", destination: "Anchorage, Alaska", origin: "Berkeley, California", seats: 3),
        CarItems(driverName: "Carol T. Christ", destination: "New York, New York", origin: "Berkeley, California", seats: 2),
    ]
      
    func addItem() {
       //DO
    }
    func deleteItem() {
        //if zero seats, remove post
    }
    
    @Environment(\.presentationMode) var presentation: Binding<PresentationMode>
    @Binding var name: String
    @Binding var origin: String
    @Binding var destination: String
    @Binding var carsize: String
    @Binding var pcradius: String
    
    var body: some View {

        NavigationView {
            List {
                ForEach(list) { listItem in
                    VStack{
                        PostCell(driverName: listItem.driverName, destination: listItem.destination, origin: listItem.origin, seats: listItem.seats)
                        if !origin.isEmpty {
                            PostCell(driverName: name, destination: destination, origin: origin, seats: carsize)
                        }
                    }
                    
                }
                
                

                
                NavigationLink(destination: CreateView()) {
                    Text("Create a carpool")
                }
                
            }.navigationTitle("Carpools")
        }
    }
}

//struct Previews_CarpoolView_Previews: PreviewProvider {
//    static var previews: some View {
//        CarpoolView(origin: "test", destination: "test", carsize: "test", pcradius: "test")
//    }
//}
