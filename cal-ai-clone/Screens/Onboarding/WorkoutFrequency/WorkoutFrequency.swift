//
//  WorkoutFrequency.swift
//  cal-ai-clone
//
//  Created by Phuong Doan Duy on 21/2/25.
//


enum WorkoutFrequency: String, CaseIterable {
    case beginner = "0-2"
    case intermediate = "3-5"
    case advanced = "6+"
    
    var description: String {
        switch self {
        case .beginner: return "Workouts now and then"
        case .intermediate: return "A few workouts per week"
        case .advanced: return "Dedicated athlete"
        }
    }
}





// ViewModel
