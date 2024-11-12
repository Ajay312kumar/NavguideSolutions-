//
//  TableView+Extension.swift
//  NavguideSolutionsLLp
//
//  Created by Ajay Kumar on 13/11/24.
//

import Foundation
import UIKit


extension UITableView {
    
    func registerXIB(name:String){
        self.register(UINib(nibName: name, bundle: nil), forCellReuseIdentifier: name)
    }
    
//    func emptyInfo(msg:String){
//        let objNoDataFound = UINib(nibName: "EmptyList", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! EmptyList
//        objNoDataFound.lblError.text = msg
//        self.backgroundView = objNoDataFound
//    }
}

