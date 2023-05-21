
import SwiftUI

struct SignInButton: View {
    
    @State private var showingAlert = false
    @State var showFullScreen: Bool = false
    @State var showSheet: Bool = false
    @State var image1 = Image(systemName: "g.circle")
    @State var image2 = Image(systemName: "envelope.fill")
    
    var body: some View {
        VStack{
            Text("Create your Waze account")
                .font(.system(size: 28, weight: .heavy, design: .default))
                .padding()
            
            Button("\(image1)   Sign up with Google", action: {
                showFullScreen.toggle()
            })
            .padding(16)
            .frame(maxWidth: .infinity)
            .background(Color("lightgray"))
            .cornerRadius(30)
            .padding(.horizontal, 16)
            .foregroundColor(Color("blue2"))
            
            Button("\(image2)   Sign up with email", action: {
                showFullScreen.toggle()
            })
            .padding(16)
            .frame(maxWidth: .infinity)
            .background(Color("lightgray"))
            .cornerRadius(30)
            .padding(.horizontal, 16)
            .foregroundColor(Color("blue2"))
            
            ZStack{
                Divider()
                    .padding(.leading, 230)
                    .frame(maxWidth: .infinity)
                Text("OR")
                Divider()
                    .padding(.trailing, 230)
                    .frame(maxWidth: .infinity)
            }.bold()
            Button("Sign up later", action: {
                MapPage()
            })
            .padding(16)
            .frame(maxWidth: .infinity)
            .background(Color("Blue"))
            .cornerRadius(30)
            .padding(.horizontal, 16)
            .foregroundColor(Color.white)
            
            }.bold()
            .fullScreenCover(isPresented: $showFullScreen) {
                LogInPage()
        }
    }
}

struct SignInButton_Previews: PreviewProvider {
    static var previews: some View {
        SignInButton()
    }
}
