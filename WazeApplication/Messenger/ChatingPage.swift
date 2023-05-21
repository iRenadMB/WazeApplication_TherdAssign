
//import SVEVideoUI
import AVKit
import SwiftUI

struct ChatingPage: View {
    
    @State private var messageText = ""
    @State var messages: [String] = ["No Messages"]
    
    var body: some View {

        VStack{
            HStack{
                Text("Chats")
                    .font(.largeTitle)
                    .bold()
            }
            ScrollView{
                ForEach(messages, id: \.self) {
                    message in
                    Text(message)
                }
            }
            HStack{
                TextField("Send Message", text: $messageText)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .onSubmit {
                        sendMessage(message: messageText)
                    }
                Button{
                    sendMessage(message: messageText)

                } label: {
                    Image(systemName: "paperplane.fill")
                }
                .font(.system(size: 26))
                .padding(.horizontal, 10)
            }
            .padding()
        }
    }
    func sendMessage(message: String) {
        withAnimation{
            messages.append("[User] " + message)
            self.messageText = ""
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            withAnimation {
                messages.append(getBotResponse(message: message))
            }
        }
    }
}

struct ChatingPage_Previews: PreviewProvider {
    static var previews: some View {
        ChatingPage()
    }
}
