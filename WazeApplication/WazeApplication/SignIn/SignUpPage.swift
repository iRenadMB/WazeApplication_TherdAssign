
import SwiftUI

struct SignUpPage: View {
    @State var showSheet: Bool = false

    var body: some View {

        NavigationStack{
                SignInButton()

            }.sheet(isPresented: $showSheet) {
                MapPage()
                    .presentationDetents([.fraction((0.40))])
        }
    }
}

struct SignUpPage_Previews: PreviewProvider {
    static var previews: some View {
        SignUpPage()
    }
}
