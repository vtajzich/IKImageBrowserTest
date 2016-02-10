//
//  ViewController.swift
//  IKImageBrowserTest
//
//  Created by Vitezslav Tajzich on 10/02/16.
//  Copyright © 2016 Vitezslav Tajzich. All rights reserved.
//

import Cocoa
import Quartz
import Quartz.ImageKit


class ViewController: NSViewController {
    
    let imagesPath = "/Library/Desktop Pictures/"

    @IBOutlet weak var imageBrowserView: IKImageBrowserView!
    var photos = [Photo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let fileManager = NSFileManager.defaultManager()
        let enumerator: NSDirectoryEnumerator = fileManager.enumeratorAtPath(imagesPath)!
        
        while let element = enumerator.nextObject() as? String {
            print("element: \(element)")
            
            if element.hasSuffix(".jpg") {
                photos.append(Photo(photo: NSImage(contentsOfFile: imagesPath + element)!, name: element))
            }
        }
        
        imageBrowserView.reloadData()
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    override func numberOfItemsInImageBrowser(aBrowser: IKImageBrowserView!) -> Int {
        return photos.count
    }
    
    override func imageBrowser(aBrowser: IKImageBrowserView!, itemAtIndex index: Int) -> AnyObject! {
        
        let photo = photos[index]
        
        return photo
    }


}

