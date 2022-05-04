//
//  Post.swift
//  NC1 MyAPP
//
//  Created by Kelly Chui on 2022/05/03.
//

import Foundation

struct PostBlock {
    var postID : Int
    var blockType : String
    var text : String
    var image : String
}

struct Post {
    //얘네는 옵셔널로
    var isMyFavorite: Bool = true //어색함
    var title: String = "제목"
    var date: String = "05-04-2022"
    var blockArr: [PostBlock]
}

struct MakeBlock {
    var idArr : [Int]
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
