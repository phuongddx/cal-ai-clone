//
//  OnboardingView.swift
//  cal-ai-clone
//
//  Created by Phuong Doan Duy on 19/2/25.
//

import SwiftUI

struct OnboardingView: View {
    @State private var currentStep: OnboardingStep

    init(currentStep: OnboardingStep = .welcome) {
        self.currentStep = currentStep
    }

    var body: some View {
        VStack {
            if currentStep != .welcome {
                OnboardingHeaderView {
                    handlePrevTapped()
                }
            }
            ContentView(currentStep: currentStep)
            OnboardingFooterView {
                handleNextTapped()
            }
        }
        .background(Color.white)
        .animation(.easeInOut, value: currentStep)
    }

    private func handleNextTapped() {
        let allCases = OnboardingStep.allCases
        if let currentIndex = allCases.firstIndex(of: currentStep),
           currentIndex + 1 < allCases.count {
            currentStep = allCases[currentIndex + 1]
        }
    }

    private func handlePrevTapped() {
        let allCases = OnboardingStep.allCases
        if let currentIndex = allCases.firstIndex(of: currentStep),
           currentIndex > 0 {
            currentStep = allCases[currentIndex - 1]
        }
    }

    struct ContentView: View {
        let currentStep: OnboardingStep

        var body: some View {
            switch currentStep {
            case .welcome:
                OnboardingWelcomeView()
            case .gender:
                GenderSelectionView()
            case .workoutPreferences:
                WorkoutFrequencyView()
            case .referralSource:
                ReferralSourceView()
            case .thankyou:
                ThankYouView()
            }
        }
    }
}

#Preview {
    OnboardingView(currentStep: .referralSource)
}
