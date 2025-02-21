//
//  OnboardingView.swift
//  cal-ai-clone
//
//  Created by Phuong Doan Duy on 19/2/25.
//

import SwiftUI

struct OnboardingView: View {
    @State private var currentStep: OnboardingStep
    @State private var currentProgress: CGFloat = 0.1

    init(currentStep: OnboardingStep = .welcome) {
        self.currentStep = currentStep
    }

    var body: some View {
        VStack {
            if currentStep != .welcome {
                OnboardingHeaderView(onBack: {
                    handlePrevTapped()
                }, progress: $currentProgress)
            }
            ContentView(currentStep: currentStep)
            OnboardingFooterView {
                handleNextTapped()
            }
        }
        .background(Color.white)
        .animation(.easeInOut, value: currentStep)
        .onChange(of: currentStep) { newStep in
            updateProgress(for: newStep)
        }
    }

    private func updateProgress(for step: OnboardingStep) {
       let allCases = OnboardingStep.allCases
       if let index = allCases.firstIndex(of: step) {
           currentProgress = CGFloat(index) / CGFloat(allCases.count - 1)
       }
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
    OnboardingView(currentStep: .welcome)
}
