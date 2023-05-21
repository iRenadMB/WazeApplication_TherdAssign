
import MapKit
import SwiftUI

struct MapPage: View {
    
    @State private var mapREGION = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.5, longitude: -0.12), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        
        NavigationStack{
            Map(coordinateRegion: $mapREGION).edgesIgnoringSafeArea(.all)
        }
    }
}

struct MapPage_Previews: PreviewProvider {
    static var previews: some View {
        MapPage()
    }
}
