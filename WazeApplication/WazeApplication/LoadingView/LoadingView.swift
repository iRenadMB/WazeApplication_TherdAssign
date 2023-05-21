
import SwiftUI

struct LoadingView: View {
    var body: some View {
        
            ProgressView("Signing in...")
                .foregroundColor(.black)
                .padding(.top, 650)
                .padding(.trailing, 210)
                .bold()
                .progressViewStyle(CircularProgressViewStyle(tint: .white))
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
