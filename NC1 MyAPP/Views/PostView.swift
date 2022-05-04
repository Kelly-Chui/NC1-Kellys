//
//  PostView.swift
//  NC1 MyAPP
//
//  Created by Kelly Chui on 2022/05/03.
//

import SwiftUI

struct BlockView: View {
    var Block : PostBlock
    
    var body: some View {
        if Block.blockType == "text" {
            Text(Block.text)
        } else {
            Image(Block.image)
        }
    }
}

struct PostView: View {
    //var currentPost: Post
    
    var body: some View {
        List {
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
