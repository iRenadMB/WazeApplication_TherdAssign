
import SwiftUI

struct LoadingPage: View {
    @State private var showLoading = false
    @State private var isActive = false

    
    var body: some View {
        if isActive {
            OnboardingPage()
        } else {
   
            ZStack{
                Color("cyan").edgesIgnoringSafeArea(.all)
                    .overlay(
                        showLoading ? LoadingView() : nil
                    )
                    .onAppear{
                        showLoading = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            showLoading = false
                        } // عشان تخليه يختفي *****
                    }
            } .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
            }
        }
    }
}

struct LoadingPage_Previews: PreviewProvider {
    static var previews: some View {
        LoadingPage()
    }
}

