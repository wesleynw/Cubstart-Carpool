import SwiftUI

struct CarpoolView: View {
    
    @State var placeholder: String = ""
    
    var body: some View {
        List {
            PostCell(driverName: "John Smith", destination: "Anchorage, Alaska", origin: "Berkeley, California", seats: 3)
            PostCell(driverName: "Carol T. Christ", destination: "New York, New York", origin: "Berkeley, California", seats: 2)
            
            NavigationLink(destination: CreateView(), label: {Text("Create a carpool")})
        }
        .backgroundStyle(.white)
        .navigationTitle("Carpools")
        .navigationBarTitleDisplayMode(.large)
        
    }
}

struct Previews_CarpoolView_Previews: PreviewProvider {
    static var previews: some View {
        CarpoolView()
    }
}
