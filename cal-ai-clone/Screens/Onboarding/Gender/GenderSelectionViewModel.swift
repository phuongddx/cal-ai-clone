//
//  GenderSelectionViewModel.swift
//  cal-ai-clone
//
//  Created by Phuong Doan Duy on 21/2/25.
//

import Combine

class GenderSelectionViewModel: ObservableObject {
    @Published var selectedGender: Gender?
    @Published var onboardingData: OnboardGeneralData

    init() {
        self.onboardingData = OnboardGeneralData.genderSelectionData
    }
    
    func selectGender(_ gender: Gender) {
        selectedGender = gender
    }
    
    func getGenderOptions() -> [GenderOption] {
        return onboardingData.options as? [GenderOption] ?? []
    }
}
