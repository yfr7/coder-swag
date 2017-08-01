//
//  Category.swift
//  coder-swag
//
//  Created by Yves Fernandes on 8/1/17.
//  Copyright © 2017 Kartech LDA. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName:String
    
    init(title:String, imageName:String) {
        self.title = title
        self.imageName = imageName
    }
}
