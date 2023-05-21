
import SwiftUI

struct PolicyAndPrivacyText: View {
    var body: some View {
        VStack{
            Text("By continuing you agree to Waze's ")
            .font(.footnote)
            .foregroundColor(.black) +
            Text("Terms of Service")
            .foregroundColor(.blue)
            .font(.footnote) +
            Text(" and ")
            .foregroundColor(.black)
            .font(.footnote) +
            Text("Privacy Policy")
            .foregroundColor(.blue)
            .font(.footnote) }
            .multilineTextAlignment(.center)
            .padding(.horizontal, 80)
    }
}

struct PolicyAndPrivacyText_Previews: PreviewProvider {
    static var previews: some View {
        PolicyAndPrivacyText()
    }
}
