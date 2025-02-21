//
//  OnboardingFooterView.swift
//  cal-ai-clone
//
//  Created by Phuong Doan Duy on 21/2/25.
//

import SwiftUI

struct OnboardingFooterView: View {
    let onNext: () -> Void

    var body: some View {
        VStack(spacing: 0) {
            Divider()
            Button(action: {
                onNext()
            }) {
                Text("Next")
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 56)
                    .background(Color.black)
                    .cornerRadius(5)
            }
            .padding(.all)
        }
    }
}

#Preview {
    VStack {
        Spacer()
        OnboardingFooterView { }
    }
}
