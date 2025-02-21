//
//  WorkoutFrequencyView.swift
//  cal-ai-clone
//
//  Created by Phuong Doan Duy on 21/2/25.
//

import SwiftUI

struct WorkoutFrequencyView: View {
    @StateObject private var viewModel = WorkoutFrequencyViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            VStack(alignment: .leading, spacing: 8) {
                Text("How many workouts do you do per week?")
                    .font(.system(size: 28, weight: .bold))
                
                Text("This will be used to calibrate your custom plan.")
                    .font(.system(size: 16, weight: .regular))
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)
            Spacer()
            // Frequency Options
            VStack(spacing: 12) {
                ForEach(WorkoutFrequency.allCases, id: \.self) { frequency in
                    WorkoutFrequencyButton(
                        title: frequency.rawValue,
                        description: frequency.description,
                        isSelected: viewModel.selectedFrequency == frequency
                    ) {
                        viewModel.selectFrequency(frequency)
                    }
                }
            }
            .padding(.horizontal)
            Spacer()
        }
    }
}

#Preview {
    OnboardingView(currentStep: .workoutPreferences)
}
