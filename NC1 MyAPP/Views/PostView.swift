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
        }
    }
}


struct PostView: View {
    //var currentPost: Post
    var post: Post = Post()
    var body: some View {
        Image(post.coverImage)
            .resizable()
            .aspectRatio(contentMode: .fill)
        ScrollView(.vertical){
            VStack(alignment: .leading){
                ForEach(0..<post.blockArr.count) { i in
                    BlockView(block: post.blockArr[i])
                }
            }
        }
        .padding(.horizontal)
        .navigationBarTitle(post.title, displayMode: .inline)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
