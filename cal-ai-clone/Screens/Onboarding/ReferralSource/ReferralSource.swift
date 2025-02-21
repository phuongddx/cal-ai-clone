//
//  ReferralSource.swift
//  cal-ai-clone
//
//  Created by Phuong Doan Duy on 21/2/25.
//

import SwiftUIFontIcon
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
        case .instagram: return "instagram.logo" // Use your actual asset names
        case .facebook: return "facebook.logo"
        case .tiktok: return "tiktok.logo"
        case .youtube: return "youtube.logo"
        case .google: return "google.logo"
        case .tv: return "tv.fill"
        case .friendOrFamily: return "person.2.fill"
        }
    }

    var icon: some View {
        switch self {
        case .instagram:
            FontIcon.text(.ionicon(code: .logo_instagram))
                .foregroundColor(Color.pink)
        case .facebook:
            FontIcon.text(.ionicon(code: .logo_facebook))
                .foregroundColor(Color.blue)
        case .tiktok:
            FontIcon.text(.ionicon(code: .ios_backspace))
                .foregroundColor(Color.black)
        case .google:
            FontIcon.text(.ionicon(code: .logo_google))
                .foregroundColor(Color.red)
        case .tv:
            FontIcon.text(.ionicon(code: .ios_tv))
                .foregroundColor(Color.gray)
        case .friendOrFamily:
            FontIcon.text(.ionicon(code: .ios_person))
                .foregroundColor(Color.green)
        case .youtube:
            FontIcon.text(.ionicon(code: .logo_youtube))
                .foregroundColor(Color.red)
        }
    }

}
