
import SwiftUI

struct ConnictingView: View {
    @State private var progress: Double = 0.0
//    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))

    var body: some View {
//        Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
//                    .frame(width: 400, height: 300)
        ZStack{
            Circle()
                .stroke(lineWidth: 12)
                .opacity(0.2)
                .foregroundColor(Color.blue)
            Circle()
                .trim(from: 0.0, to: self.progress)
                .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color("blue3"))
            Button("Connecting.."){
                self.progress = 1.0
            }.offset(y: 250)
            
        }
        

        }
        
    }


struct ConnictingView_Previews: PreviewProvider {
    static var previews: some View {
        ConnictingView()
    }
}
