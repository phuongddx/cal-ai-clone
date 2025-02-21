//
//  OnboardingHeaderView.swift
//  cal-ai-clone
//
//  Created by Phuong Doan Duy on 21/2/25.
//

import SwiftUI

struct OnboardingHeaderView: View {
    let onBack: () -> Void
    @Binding var progress: CGFloat
    @State private var selectedLanguage: String = "EN"

    var body: some View {
        HStack(alignment: .center) {
            Button(action: {
                onBack()
            }) {
                Circle()
                    .fill(Color(.systemGray6))
                    .frame(width: 40, height: 40)
                    .overlay(
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                    )
            }
            ProgressView(value: progress)
                .progressViewStyle(.linear)
                .tint(.black)
                .padding(.horizontal)
                .animation(.easeInOut, value: progress)
            
            // Language Switcher
            Button(action: {
                // Handle language switch
            }) {
                HStack(spacing: 4) {
                    Text("🇺🇸")
                    Text(selectedLanguage)
                        .font(.system(size: 14, weight: .medium))
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .background(Color(.systemGray6))
                .cornerRadius(20)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    OnboardingView()
}
