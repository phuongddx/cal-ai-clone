//
//  GenderOptionButton.swift
//  cal-ai-clone
//
//  Created by Phuong Doan Duy on 21/2/25.
//

import SwiftUI

struct GenderOptionButton: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(isSelected ? .white : .black)
                .frame(maxWidth: .infinity, maxHeight: 50)
                .padding()
                .background(isSelected ? Color.black : Color.black.opacity(0.1))
                .cornerRadius(.all(5))
        }
    }
}

#Preview(body: {
    OnboardingView()
})
