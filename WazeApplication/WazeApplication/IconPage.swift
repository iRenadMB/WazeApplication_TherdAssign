
import SwiftUI

struct IconPage: View {

    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            LoadingPage()
        } else {
           
            VStack{
                ZStack{
                        Color("cyan").edgesIgnoringSafeArea(.all)
                        
                        VStack(spacing: 5){
                            Image("logowaze")
                                .resizable()
                                .frame(width: 110, height: 110)
                            Text("waze")
                                .font(.system(size: 70, weight: .semibold, design: .default))
                                .foregroundColor(Color.black)
                                .bold()
                        } .scaleEffect(size)
                        .opacity(opacity)
                        .onAppear{
                            withAnimation(.easeIn(duration: 1.2)) {
                                self.size = 0.9
                                self.opacity = 1.0
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
}


struct IconPage_Previews: PreviewProvider {
    static var previews: some View {
        IconPage()
    }
}

