//
//  ReferralSourceViewModel.swift
//  cal-ai-clone
//
//  Created by Phuong Doan Duy on 21/2/25.
//

import Combine

class ReferralSourceViewModel: ObservableObject {
    @Published var selectedSource: ReferralSource?
    
    func selectSource(_ source: ReferralSource) {
        selectedSource = source
    }
}
