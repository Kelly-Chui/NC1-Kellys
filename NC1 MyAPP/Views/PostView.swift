//
//  PostView.swift
//  NC1 MyAPP
//
//  Created by Kelly Chui on 2022/05/03.
//

import SwiftUI

struct BlockView: View {
    var block : PostBlock
    
    var body: some View {
        if block.blockType == "text" {
            Text(block.text)
                .multilineTextAlignment(.leading)
        } else {
            Image(block.image)
                .resizable()
                .frame(width: 200, height: 200)
        }
    }
}


struct PostView: View {
    //var currentPost: Post
    var post: Post = Post()
    var body: some View {
        ScrollView(.vertical){
            LazyVStack(alignment: .leading){
                ForEach(0..<post.blockArr.count) { i in
                    BlockView(block: post.blockArr[i])
                }
            }
        }
        .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 0,
              maxHeight: .infinity,
              alignment: .topLeading
            )
        .padding([.top, .leading, .trailing])
        .navigationBarTitle(post.title, displayMode: .large)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
