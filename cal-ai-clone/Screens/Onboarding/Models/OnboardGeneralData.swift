//
//  OnboardGeneralData.swift
//  cal-ai-clone
//
//  Created by Phuong Doan Duy on 21/2/25.
//

import Foundation

struct OnboardGeneralData {
    let id = UUID()
    let icon: String?
    let title: String?
    let subtitle: String?
    let options: Any?
}

// MARK: - Sample Data Extension
extension OnboardGeneralData {
    static var genderSelectionData: OnboardGeneralData {
        let genderOptions = Gender.allCases.map { gender in
            GenderOption(title: gender.rawValue)
        }
        
        return OnboardGeneralData(
            icon: nil,
            title: "Choose your Gender",
            subtitle: "This will be used to calibrate your custom plan.",
            options: genderOptions
        )
    }
}
