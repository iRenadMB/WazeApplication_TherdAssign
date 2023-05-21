
import SwiftUI

struct OnBoardingStep {
    let image: String
    let description: String
}

private let onBoardingSteps = [
    OnBoardingStep(image: "HomePage1", description: "Know when to leave based on live traffic updates"),
    OnBoardingStep(image: "HomePage2", description: "Avoid traffic, police, hazards, and more"),
    OnBoardingStep(image: "HomePage3", description: "Save time with instant route changes")
]

struct OnboardingPage: View {
    @State private var currentStep = 0
    init(){
        UIScrollView.appearance().bounces = false
    }
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Spacer()
                    Button(action: {
                        self.currentStep = onBoardingSteps.count - 1})
                    {
                        Text("Skip")
                            .padding(16)
                            .foregroundColor(.gray)
                    }
                }
                TabView(selection: $currentStep){
                    ForEach(0..<onBoardingSteps.count) { it in
                        VStack(spacing: 40){
                            Image(onBoardingSteps[it].image)
                                .resizable()
                                .frame(width: 290, height: 250)
                            Text(onBoardingSteps[it].description)
                                .font(.title)
                                .bold()
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 20)
                        }.tag(it)
                    }
                }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                
                HStack{
                    ForEach(0..<onBoardingSteps.count) { it in
                        if it == currentStep {
                            Circle()
                                .frame(width: 10, height: 10)
                                .cornerRadius(10)
                                .foregroundColor(Color("Blue"))
                        } else{
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(Color("Gray"))
                        }
                    }
                }.padding(.bottom, 24)
                ButtonPage()
                }.bold()
                PolicyAndPrivacyText()
                
                
            }.font(.system(size: 18))
        }
    }


struct OnboardingPage_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage()
    }
}
