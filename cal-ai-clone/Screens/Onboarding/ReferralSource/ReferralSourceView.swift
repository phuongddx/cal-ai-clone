//
//  ReferralSourceView.swift
//  cal-ai-clone
//
//  Created by Phuong Doan Duy on 21/2/25.
//

import SwiftUI

struct ReferralSourceView: View {
    @StateObject private var viewModel = ReferralSourceViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Where did you hear about us?")
                .font(.system(size: 28, weight: .bold))
                .padding(.horizontal)
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(ReferralSource.allCases, id: \.self) { source in
                        ReferralSourceButton(
                            source: source,
                            isSelected: viewModel.selectedSource == source
                        ) {
                            viewModel.selectSource(source)
                        }
                        .transition(.move(edge: .trailing).combined(with: .opacity))
                        .animation(.spring(response: 0.5, dampingFraction: 0.7), value: viewModel.selectedSource)
                    }
                }
                .padding(.horizontal)
            }
            Spacer()
        }
    }
}

#Preview {
    OnboardingView(currentStep: .referralSource)
}
