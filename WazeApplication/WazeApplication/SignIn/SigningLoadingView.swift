
import SwiftUI

struct SigningLoadingView: View {
    var body: some View {
        
        ProgressView("Updating the map...")
            
            .foregroundColor(.black)
            .padding(.top, 650)
            .padding(.trailing, 210)
            .bold()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
   }
}

struct SigningLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        SigningLoadingView()
    }
}
