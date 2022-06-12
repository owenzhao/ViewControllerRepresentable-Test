//
//  ContentView.swift
//  ViewControllerRepresentable Test
//
//  Created by zhaoxin on 2022/6/12.
//

import SwiftUI

struct ContentView: View {
    @State var title = ""
    @State var showTextView = false
    
    var body: some View {
        HStack {
            TextField("Title", text: $title)
        
            Button("Show Text View") {
                showTextView = true
            }
            .sheet(isPresented: $showTextView) {
                TextView(title: $title)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
