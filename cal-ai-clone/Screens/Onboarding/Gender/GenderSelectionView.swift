//
//  GenderSelectionView.swift
//  cal-ai-clone
//
//  Created by Phuong Doan Duy on 21/2/25.
//

import SwiftUI

struct GenderSelectionView: View {
    @StateObject private var viewModel = GenderSelectionViewModel()

    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            VStack(alignment: .leading, spacing: 8) {
                Text(viewModel.onboardingData.title ?? "")
                    .font(.system(size: 28, weight: .bold))
                
                Text(viewModel.onboardingData.subtitle ?? "")
                    .font(.system(size: 16, weight: .regular))
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)
            Spacer()
            VStack(spacing: 12) {
                ForEach(Gender.allCases, id: \.self) { gender in
                    GenderOptionButton(
                        title: gender.rawValue,
                        isSelected: viewModel.selectedGender == gender
                    ) {
                        viewModel.selectGender(gender)
                    }
                }
            }
            .padding(.horizontal)
            Spacer()
        }
    }
}

#Preview {
    OnboardingView()
}
