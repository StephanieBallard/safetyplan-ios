//
//  SafetyPlanItem.swift
//  Safety Plan
//
//  Created by Shayne Torres on 3/12/20.
//  Copyright © 2020 MoodTools. All rights reserved.
//

import Foundation

// Safety Plan Items are any persisted item that is represented by a simple string
// These include Warning Sings, Coping Strategies, Reasons to Live, and Places for Distraction
// Since all these items are saved as strings, it makes sense to have a standard Data structure that represents them.
struct SafetyPlanItem {
    
    enum ItemType {
        case warningSign
        case copingStrategy
        case reasonToLive
        case placeForDistraction
        
        // The string key that is used to represent the saved safety plan item in UserDefaults
        var userDefaultsBaseKey: String {
            switch self {
            case .warningSign:
                return "warningsign"
            case .copingStrategy:
                return "coping"
            case .reasonToLive:
                return "reasonstolive"
            case .placeForDistraction:
                return "placesfordistraction"
            }
        }
    }
    
    var name: String
    var type: ItemType
}
