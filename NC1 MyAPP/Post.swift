//
//  Post.swift
//  NC1 MyAPP
//
//  Created by Kelly Chui on 2022/05/03.
//

import Foundation

struct PostBlock {
    var blockType : String = "text"
    var text : String = "안녕하세요"
    var image : String = "NoImage"
}

struct Post {
    var isMyFavorite: Bool = true
    var title: String = "Title"
    var date: String = "Always"
    var coverImage: String = "NoImage"
    var blockArr: [PostBlock] = [PostBlock(blockType: "image"), PostBlock(text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."), PostBlock(blockType: "image", image: "Kelly")]
}

struct MakeBlock {
    var typeArr : [String]
    var textArr : [String]
    var imageArr : [String]
}

struct MakePost {
    var postArr : [Post]
    var titleArr : [String] = ["좋아하는 노래"]
    var dateArr : [String] = ["05-04-2022"]
    var blockArr2 : [[PostBlock]] = [] //비정방형 배열이 있으면 정말 좋겠지만 -> 있네
    
    
    /*
    func makeDateFormat(dateString : String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy"
        let convertDate = dateFormatter.date(from: dateString)
        return convertDate!
    }
    mutating func filldateArrDate(dateArrString : [String]){
        for i in 0...dateArrString.count{
            dateArrDate.append(contentsOf: makeDateFormat(dateString : dateArrString[i]))
        }
    }
    */
}
