//
//  WorkoutFrequencyViewModel.swift
//  cal-ai-clone
//
//  Created by Phuong Doan Duy on 21/2/25.
//

import Combine

class WorkoutFrequencyViewModel: ObservableObject {
    @Published var selectedFrequency: WorkoutFrequency?

    func selectFrequency(_ frequency: WorkoutFrequency) {
        selectedFrequency = frequency
    }
}
