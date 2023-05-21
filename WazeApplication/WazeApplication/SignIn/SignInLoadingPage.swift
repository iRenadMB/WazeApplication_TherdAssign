
import SwiftUI

struct SignInLoadingPage: View {
    
    @State private var showLoading = false
    @State private var isActive = false
    
    var body: some View {
        
        if isActive {
            MapPage()
        } else {
   
            ZStack{
                Color("cyan").edgesIgnoringSafeArea(.all)
                    .overlay(
                        showLoading ? SigningLoadingView() : nil
                    )
                    .onAppear{
                        showLoading = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            showLoading = false
                        }
                    }
            } .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
            }
        }
    }
}

struct SignInLoadingPage_Previews: PreviewProvider {
    static var previews: some View {
        SignInLoadingPage()
    }
}

