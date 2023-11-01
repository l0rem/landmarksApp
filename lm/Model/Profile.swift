//
//  Profile.swift
//  lm
//
//  Created by Nik Lorem on 01.11.23.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.autumn
    var goalDate = Date()
    
    static let `default` = Profile(username: "lor3m")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { rawValue }
    }
}
