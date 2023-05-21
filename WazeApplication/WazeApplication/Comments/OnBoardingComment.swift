//
//import SwiftUI
//
//struct OnBoardingStep {
//    let image: String
//    let description: String
//}
//
//private let OnBoardingSteps = [
//    OnBoardingStep(image: "HomePage1", description: "Know when to leave based on live traffic updates"),
//    OnBoardingStep(image: "HomePage2", description: "Avoid traffic, police, hazards, and more"),
//    OnBoardingStep(image: "HomePage3", description: "Save time with instant route changes")
//]
//
//struct OnboardingPage: View {
//    @State private var currentStep = 0
//    init(){
//        UIScrollView.appearance().bounces = false
//    }
//    var body: some View {
//        
//        VStack{
//            HStack{
//                Spacer()
//                Button(action: {
//                    self.currentStep = OnBoardingSteps.count - 1})
//                {
//                    Text("Skip")
//                        .padding(16)
//                        .foregroundColor(.gray)
//                }
//            }
//            TabView(selection: $currentStep){
//                ForEach(0..<OnBoardingSteps.count) { it in
//                    VStack(spacing: 40){
//                        Image(OnBoardingSteps[it].image)
//                            .resizable()
//                            .frame(width: 290, height: 250)
//                        Text(OnBoardingSteps[it].description)
//                            .font(.title)
//                            .bold()
//                            .multilineTextAlignment(.center)
//                            .padding(.horizontal, 20)
//                    }.tag(it)
//                }
//            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//            Button(action: {
//                
//            }) {
//                Text(currentStep < OnBoardingSteps.count - 1 ? "Next" : "Get started")
//            }
//            HStack{
//                ForEach(0..<OnBoardingSteps.count) { it in
//                    if it == currentStep {
//                        Circle()
//                            .frame(width: 10, height: 10)
//                            .cornerRadius(10)
//                            .foregroundColor(Color("Blue"))
//                    } else{
//                        Circle()
//                            .frame(width: 10, height: 10)
//                            .foregroundColor(Color("Gray"))
//                    }
//                }
//            }
//            .padding(.bottom, 24)
//            //            Button(action:{
//            //                if self.currentStep < OnBoardingSteps.count - 1 {
//            //                    self.currentStep += 1
//            //                } else{
//            //                    // GET STARTED LOGIC
//            //                }
//            //            }) {
//            //                Text(currentStep < OnBoardingSteps.count - 1 ? "Get started" : "Log in")
//            //                    .padding(16)
//            //                    .frame(maxWidth: .infinity)
//            //                    .background(Color("Blue"))
//            //                    .cornerRadius(16)
//            //                    .padding(.horizontal, 16)
//            //                    .foregroundColor(.white)
//            //                }.buttonStyle(PlainButtonStyle())
//            //                 }
//            VStack{
//                Text("Get started")
//                    .padding(16)
//                    .frame(maxWidth: .infinity)
//                    .background(Color("Blue"))
//                    .cornerRadius(16)
//                    .padding(.horizontal, 16)
//                    .foregroundColor(.white)
//                Text("Log in")
//                    .padding(16)
//                    .frame(maxWidth: .infinity)
//                    .background(Color("Blue"))
//                    .cornerRadius(16)
//                    .padding(.horizontal, 16)
//                    .foregroundColor(.white)
//            }
//            Group {
//                Text("By continuing you agree to Waze's")
//                Button("Terms of Service", action: {})
//                Text("and")
//                Button("Privacy Policy", action: {})
//            }
//        }
//        
//    }
//}
//
//struct OnboardingPage_Previews: PreviewProvider {
//    static var previews: some View {
//        OnboardingPage()
//    }
//}
//
////By continuing you agree to Waze's Terms of Service and Privacy Policy
