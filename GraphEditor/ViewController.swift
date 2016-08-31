//
//  ViewController.swift
//  GraphEditor
//
//  Created by Анастасия Васюра on 31/08/16.
//  Copyright © 2016 Анастасия Васюра. All rights reserved.
//

import Cocoa

enum GraphEditorState {
    case Normal
    case AddingPoint
    case AddingRelation
}

class ViewController: NSViewController {

    private var currentState: GraphEditorState = .Normal
    
    @IBOutlet weak var imageView: NSImageView!
    @IBOutlet weak var scrollView: NSScrollView!
    @IBOutlet weak var _window: NSWindow!
    
    func updateState(state: GraphEditorState) {
        currentState = state
        updateView()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    @IBAction func doZoom(sender: AnyObject) {
        
    }
    
    private func updateView() {
     
    }
    
    private func clearNonSavedPoints() {
        
    }
    
    private func offAllGestureRecognizers() {
        
    }
    
    private func onGestureRecognizers() {
        
    }
}

