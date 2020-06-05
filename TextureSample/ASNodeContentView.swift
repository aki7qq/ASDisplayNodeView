//
//  ContentView.swift
//  TextureSample
//
//  Created by akitomo on 2020/06/01.
//  Copyright © 2020 texture.relation2012.com. All rights reserved.
//

import SwiftUI
import AsyncDisplayKit

struct ASDisplayNodeView: UIViewRepresentable {
    typealias UIViewType = UIView
    
    let node: ASDisplayNode
        
    func makeUIView(context: Context) -> UIView {
        return node.view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
}

struct ASDisplayNodeView_Previews: PreviewProvider {
    static var previews: some View {
        
        // ノードの表示内容を確認
        
        let node = ASTextNode2()
        let attrs = [NSAttributedString.Key.font: UIFont(name: "HelveticaNeue", size: 12.0)]
        let string = NSAttributedString(string: "Hey, here's some text.", attributes: attrs as [NSAttributedString.Key : Any])

        node.attributedText = string
        
        return ASDisplayNodeView(node: node)
    }
}
