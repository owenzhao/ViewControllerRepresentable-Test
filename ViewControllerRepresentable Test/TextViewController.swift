//
//  TextViewController.swift
//  ViewControllerRepresentable Test
//
//  Created by zhaoxin on 2022/6/12.
//

import Cocoa

class TextViewController: NSViewController {
    @IBOutlet weak var label: NSTextField!
    weak var delegate:TextViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closeButtonClicked(_ sender: Any) {
        delegate?.textView(self)
    }
}

protocol TextViewControllerDelegate:AnyObject {
    func textView(_ textView:TextViewController)
}
