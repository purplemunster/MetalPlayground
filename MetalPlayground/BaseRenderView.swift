//
//  BaseRenderView.swift
//  MetalPlayground
//
//  Created by Rohan Mehalwal on 11/9/21.
//

import SwiftUI
import MetalKit

struct BaseRenderView: View {
  @State private var metalView = MTKView()
  @State private var renderer: MetalRenderer?

  var body: some View {
    MetalViewRepresentable(metalView: $metalView)
      .onAppear {
        renderer = MetalRenderer(metalView: metalView)
      }
  }
}

struct MetalViewRepresentable: NSViewRepresentable {
  @Binding var metalView: MTKView

  func makeNSView(context: Context) -> some NSView {
    metalView
  }

  func updateNSView(_ uiView: NSViewType, context: Context) {
  }
}

struct MetalView_Previews: PreviewProvider {
  static var previews: some View {
      BaseRenderView()
  }
}
