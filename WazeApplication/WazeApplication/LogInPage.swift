

import SwiftUI

struct LogInPage: View {
   
    @State private var emailAdd: String = ""
    @State var image1 = Image(systemName: "envelope.fill")

    var body: some View {
        NavigationStack{
            
            VStack(alignment: .leading, spacing: 0){
                
                Text("What's your email?")
                    .font(.system(size: 28, weight: .heavy, design: .default))
                    .padding()
                    TextField("\(image1)  Email address", text: $emailAdd)
                        .bold()
                        .frame(width: .infinity, height: 60)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(8)
                        .padding()
                         Spacer()
                Text("Send me updates, promotions, and other emails about Waze and Waze Carpool")
                    .foregroundColor(Color("darkgray"))
                    .multilineTextAlignment(.leading)
//                    .padding(.leading)
                    .padding(.bottom, 451)
            }.padding(.top, 90)
        }
    }
}

struct LogInPage_Previews: PreviewProvider {
    static var previews: some View {
        LogInPage()
    }
}
