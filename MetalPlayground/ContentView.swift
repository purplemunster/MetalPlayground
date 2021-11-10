//
//  ContentView.swift
//  MetalPlayground
//
//  Created by Rohan Mehalwal on 11/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {

            BaseRenderView()
                .frame(width: 350, height: 350)
                .border(Color.black)
                .padding()
        
            Text("Hello, world!")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
