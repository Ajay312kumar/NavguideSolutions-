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
    static func generateImageNames(from start: Int, to end: Int) -> [String] {
            return (start...end).map { "image-\($0)" }
        }
}

