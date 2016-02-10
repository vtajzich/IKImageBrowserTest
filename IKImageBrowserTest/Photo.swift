//
//  PhotoIKWrapper.swift
//  IKImageBrowserTest
//
//  Created by Vitezslav Tajzich on 10/02/16.
//  Copyright © 2016 Vitezslav Tajzich. All rights reserved.
//

import Foundation
import Quartz.ImageKit

class Photo: NSObject {
    
    var photo: NSImage
    var name: String
    
    init(photo: NSImage, name: String) {
        self.photo = photo
        self.name = name
    }
    
    override func imageRepresentationType() -> String! {
        return IKImageBrowserNSImageRepresentationType;
    }
    
    override func imageRepresentation() -> AnyObject! {
        return photo
    }
    
    override func imageUID() -> String! {
        return name
    }
    
    override func imageTitle() -> String! {
        return name
    }
}
