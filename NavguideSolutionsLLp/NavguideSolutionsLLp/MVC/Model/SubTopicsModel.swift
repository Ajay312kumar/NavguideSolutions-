//
//  SubTopicsModel.swift
//  NavguideSolutionsLLp
//
//  Created by Ajay Kumar on 13/11/24.
//

import Foundation
import UIKit

struct SubTopicsModel {
    
    var imageName: String
    
    // Generate an array of image names dynamically
    static func generateImageNames(count: Int) -> [String] {
        return (1...count).map { "image-\($0)" }
    }
}

