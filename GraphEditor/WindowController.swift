//
//  WindowController.swift
//  GraphEditor
//
//  Created by Анастасия Васюра on 31/08/16.
//  Copyright © 2016 Анастасия Васюра. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {
    
    var viewController: ViewController {
        get {
            return self.window!.contentViewController! as! ViewController
        }
    }

    override func windowDidLoad() {
        super.windowDidLoad()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    @IBAction func didTapAddPoint(sender: AnyObject) {
        viewController.updateState(.AddingPoint)
    }
    
    @IBAction func didTapAddRelation(sender: AnyObject) {
        viewController.updateState(.AddingRelation)
    }

}
