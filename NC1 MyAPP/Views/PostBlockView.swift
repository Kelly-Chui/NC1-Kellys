//
//  PostBlockView.swift
//  NC1 MyAPP
//
//  Created by Kelly Chui on 2022/05/05.
//

import SwiftUI

struct PostBlockView: View {
    //var currentPost: Post
    var post: Post = Post()
    //var title: String = "안뇽"
    //var date: String = "May 5, 2022"
    var body: some View {
        NavigationLink(destination: PostView(post: post)){
            VStack{
                Image(post.coverImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 100)
                    .cornerRadius(10.0)
                Text(post.title)
                    .foregroundColor(Color.black)
                Text(post.date)
                    .foregroundColor(Color.gray)
            }
        }
        .frame(width: 196.0, height: 180.0)
    }
}

struct BrowseBlockView: View {
    var post: Post = Post()
    var body: some View {
        NavigationLink(destination: PostView(post: post)) {
            Image(post.coverImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:300, height:200)
                .cornerRadius(20.0)
        }
    }
}

struct PostBlockView_Previews: PreviewProvider {
    static var previews: some View {
        PostBlockView()
    }
}
