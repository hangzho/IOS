//
//  Photo.swift
//  PhotoViewer
//
//  Created by Johan on 7/1/14.
//  Copyright (c) 2014 Johan. All rights reserved.
//

import UIKit
@objc(Photo)
class Photo: NSObject {
    var name:String
    var filename:String
    var notes:String
    
    init(name:String, filename:String, notes:String) {
        self.name = name
        self.filename = filename
        self.notes = notes
    }
    
}
