//
//  OnboardingStep.swift
//  cal-ai-clone
//
//  Created by Phuong Doan Duy on 21/2/25.
//


enum OnboardingStep: String, CaseIterable {
    case welcome = "Welcome"
    case gender = "Choose Gender"
    case workoutPreferences = "Workout Preferences"
    case referralSource = "How Did You Find Us?"

    var datas: Any? {
        switch self {
        default:
            return OnboardGeneralData.genderSelectionData
        }
    }
}
