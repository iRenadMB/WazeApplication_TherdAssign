
import SwiftUI
let center = UNUserNotificationCenter.current()

struct ButtonPage: View {
    @State var showFullScreen: Bool = false
    @State var showSheet: Bool = false
    
    var body: some View {
        NavigationStack{
            VStack{
                Button("Get started", action: {
                    showFullScreen.toggle()
                })
                .padding(16)
                .frame(maxWidth: .infinity)
                .background(Color("Blue"))
                .cornerRadius(30)
                .padding(.horizontal, 16)
                .foregroundColor(.white)
                
                Button("Log in", action: {
                    showSheet.toggle()
                })
                .padding(16)
                .frame(maxWidth: .infinity)
                .background(Color("lightgray"))
                .cornerRadius(30)
                .padding(.horizontal, 16)
                .foregroundColor(Color("blue2"))
            }.bold()
        }
        .sheet(isPresented: $showSheet) {
            SignUpPage()
                .presentationDetents([.fraction((0.40))])
        }
        .fullScreenCover(isPresented: $showFullScreen) {
            SignInLoadingPage()
        }
    }
}

struct ButtonPage_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPage()
    }
}

//  .alert("Important message", isPresented: $showingAlert) { Button("OK", role: .cancel) { }
