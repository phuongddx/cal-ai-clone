//
//  ReferralSource.swift
//  cal-ai-clone
//
//  Created by Phuong Doan Duy on 21/2/25.
//

import SwiftUI

enum ReferralSource: String, CaseIterable {
    case instagram = "Instagram"
    case facebook = "Facebook"
    case tiktok = "TikTok"
    case youtube = "Youtube"
    case google = "Google"
    case tv = "TV"
    case friendOrFamily = "Friend or family"

    var iconName: String {
        switch self {
        case .instagram: return "instagram.logo"
        case .facebook: return "facebook.logo"
        case .tiktok: return "tik-tok.logo"
        case .youtube: return "youtube.logo"
        case .google: return "google.logo"
        case .tv: return "tv.logo"
        case .friendOrFamily: return "friends.ic"
        }
    }
}
