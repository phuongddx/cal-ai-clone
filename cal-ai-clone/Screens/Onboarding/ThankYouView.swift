//
//  ThankYouView.swift
//  cal-ai-clone
//
//  Created by Phuong Doan Duy on 21/2/25.
//

import SwiftUI

struct ThankYouView: View {
    var body: some View {
        VStack(spacing: 12) {
            Spacer()
            Image(systemName: "checkmark.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 36, height: 36)
                .foregroundColor(.orange)
            
            Text("All done!")
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.black)
            
            Text("Thank you for trusting us")
                .font(.system(size: 22, weight: .bold))
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
            
            Text("We promise to always keep your\npersonal information private and secure.")
                .font(.system(size: 14))
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    OnboardingView(currentStep: .thankyou)
}
