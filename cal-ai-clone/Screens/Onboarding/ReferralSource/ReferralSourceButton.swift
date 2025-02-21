//
//  ReferralSourceButton.swift
//  cal-ai-clone
//
//  Created by Phuong Doan Duy on 21/2/25.
//

import SwiftUI

struct ReferralSourceButton: View {
    let source: ReferralSource
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 12) {
                Image(source.iconName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                Text(source.rawValue)
                    .font(.system(size: 16))
                Spacer()
            }
            .foregroundColor(isSelected ? .white : .black)
            .padding()
            .frame(maxWidth: .infinity)
            .background(isSelected ? Color.black : Color.black.opacity(0.1))
            .cornerRadius(12)
        }
    }
}

#Preview {
    OnboardingView(currentStep: .referralSource)
}
