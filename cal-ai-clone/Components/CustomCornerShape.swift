//
//  CustomCornerShape.swift
//  cal-ai-clone
//
//  Created by Phuong Doan Duy on 21/2/25.
//

import SwiftUI

struct CustomCornerShape: Shape {
    var radius: CGFloat
    var corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}
