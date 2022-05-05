//
//  Write.swift
//  NC1 MyAPP
//
//  Created by Kelly Chui on 2022/05/06.
//

import Foundation

struct Posts {
    var post1: Post = Post(title: "좋아하는 음악", date: "", coverImage: "Music",
                           blockArr: [PostBlock(blockType: "image", text: "", image: "Lucy"),
                                      PostBlock(blockType: "text", text: "1. beatles - Lucy In the Sky with Diamods", image: ""),
                                      PostBlock(blockType: "text", text: "비틀즈를 좋아해서", image: ""),
                                      PostBlock(blockType: "image", text: "", image: "Yesterday"),
                                      PostBlock(blockType: "text", text: "2. Jane Birkin -  Yesterday, Yes a Day", image: ""),
                                      PostBlock(blockType: "text", text: "재인 버킨은 잘 모르지만 노래가 좋다", image: ""),
                                      PostBlock(blockType: "image", text: "", image: "YueLiang"),
                                      PostBlock(blockType: "text", text: "3. Teresa Teng - 월량대표아적심", image: ""),
                                      PostBlock(blockType: "text", text: "그렇습니다", image: "")])
}
