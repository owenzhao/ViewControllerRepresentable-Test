//
//  TextView.swift
//  ViewControllerRepresentable Test
//
//  Created by zhaoxin on 2022/6/12.
//

import AppKit
import SwiftUI

struct TextView:NSViewControllerRepresentable {
    @Environment(\.presentationMode) var presentationMode
    @Binding var title:String
    
    class Coordinator: NSObject, TextViewControllerDelegate {
        var parent: TextView

        init(_ parent: TextView) {
            self.parent = parent
        }
        
        func textView(_ tvc: TextViewController) {
            self.parent.presentationMode.wrappedValue.dismiss()
        }
    }
    
    func makeNSViewController(context: Context) -> TextViewController {
        let controller  = TextViewController()
        controller.delegate = context.coordinator
        
        return controller
    }
    
    func updateNSViewController(_ nsViewController: TextViewController, context: Context) {
        nsViewController.label.stringValue = title
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
}
