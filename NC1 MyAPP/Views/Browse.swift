//
//  Browse.swift
//  NC1 MyAPP
//
//  Created by Kelly Chui on 2022/05/01.
//

import SwiftUI

struct Browse: View {
    var post1: Post = Post(title: "좋아하는 음악", date: "", coverImage:"Music")
    var post2: Post = Post(title: "홍차", date: "", coverImage:"BlackTea")
    var post3: Post = Post(title: "지도 보기", date: "", coverImage:"Globe")
    var postWILArray: [Post] = [Post(title: "좋아하는 음악", date: "", coverImage: "Music",
                                      blockArr: [PostBlock(blockType: "image", text: "", image: "Lucy"),
                                                 PostBlock(blockType: "text", text: "1. beatles - Lucy In the Sky with Diamods", image: ""),
                                                 PostBlock(blockType: "text", text: "비틀즈를 좋아해서", image: ""),
                                                 PostBlock(blockType: "image", text: "", image: "Yesterday"),
                                                 PostBlock(blockType: "text", text: "2. Jane Birkin -  Yesterday, Yes a Day", image: ""),
                                                 PostBlock(blockType: "text", text: "재인 버킨은 잘 모르지만 노래가 좋다", image: ""),
                                                 PostBlock(blockType: "image", text: "", image: "YueLiang"),
                                                 PostBlock(blockType: "text", text: "3. Teresa Teng - 월량대표아적심", image: ""),
                                                 PostBlock(blockType: "text", text: "그렇습니다", image: "")]),
                              Post(title: "홍차", date: "", coverImage:"BlackTea"),
                              Post(title: "지도 보기", date: "", coverImage:"Globe")]
    var postWIDArray: [Post] = [Post(title: "프로그래밍", date: "", coverImage: "Programming"), Post(title: "다이어트", date: "", coverImage:"Diet"), Post(title: "TMI", date: "", coverImage:"TMI")]
    
    var body: some View {
        NavigationView {
            VStack{
                
                HStack{
                    Image("Kelly")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                    Spacer()
                    VStack(alignment: .leading) {
                        Text("Kelly Chui")
                            .font(.system(size: 25))
                        Text("崔鎭原\n")
                            .font(.system(size: 20))
                        Text("화이팅 즐겁다 좋아요")
                        //                            Group{
                        //                                Text("Kelly Chui\n崔鎭原\n\n멋있는 한마디")
                        //                                //질문포인트..
                        //                            }.multilineTextAlignment(.leading)
                    }
                    Spacer()
                }
                Divider()
                Group{
                    VStack{
                        HStack{
                            Text("내가 좋아하는 것")
                                .fontWeight(.bold)
                                .padding(.leading)
                            Spacer()
                            NavigationLink(destination: WIL()) {
                                Text("전체 보기")
                                    .foregroundColor(Color.customBrown)
                            }
                            .padding(.trailing)
                        }
                        ScrollView(.horizontal) {
                            HStack(spacing: 20) {
                                ForEach(0..<postWILArray.count) {i in
                                    BrowseBlockView(post: postWILArray[i])
                                }
                            }
                        }
                        .padding(.leading)
                    }
                    //내가 좋아하는 것
                }
                Divider()
                Group{
                    VStack{
                        HStack{
                            Text("내가 하고 있는 것")
                                .fontWeight(.bold)
                                .padding(.leading)
                            Spacer()
                            NavigationLink(destination: WID()) {
                                Text("전체 보기")
                                    .foregroundColor(Color.customBrown)
                            }
                            
                            .padding(.trailing)
                        }
                        ScrollView(.horizontal) {
                            HStack(spacing: 20) {
                                ForEach(0..<postWIDArray.count) { i in
                                    BrowseBlockView(post: postWIDArray[i])
                                }
                            }
                        }
                        .padding(.leading)
                    }
                    //내가 좋아하는 것
                }
            }
            .navigationBarTitle("Browse", displayMode: .large)
        }
    }
}

struct Browse_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Browse()
                .previewInterfaceOrientation(.portraitUpsideDown)
            Browse()
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}
