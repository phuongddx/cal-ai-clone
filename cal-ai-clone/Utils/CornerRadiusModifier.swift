//
//  CornerRadiusModifier.swift
//  cal-ai-clone
//
//  Created by Phuong Doan Duy on 21/2/25.
//

import SwiftUI

enum CornerStyle {
    case all(CGFloat)
    case top(CGFloat)
    case bottom(CGFloat)
    case custom(CGFloat, UIRectCorner)
}

struct CornerRadiusModifier: ViewModifier {
    let style: CornerStyle

    func body(content: Content) -> some View {
        switch style {
        case .all(let radius):
            content
                .clipShape(RoundedRectangle(cornerRadius: radius))
        case .top(let radius):
            content.clipShape(RoundedCorner(radius: radius, corners: [.topLeft, .topRight]))
        case .bottom(let radius):
            content.clipShape(RoundedCorner(radius: radius, corners: [.bottomLeft, .bottomRight]))
        case .custom(let radius, let corners):
            content.clipShape(RoundedCorner(radius: radius, corners: corners))
        }
    }
}

extension View {
    func cornerRadius(_ style: CornerStyle) -> some View {
        modifier(CornerRadiusModifier(style: style))
    }
}

