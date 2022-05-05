//
//  WIL.swift
//  NC1 MyAPP
//
//  Created by Kelly Chui on 2022/05/02.
//

import SwiftUI

struct WIL: View {
    var body: some View {
        
        VStack{
            HStack{
                PostBlockView(post: Post(title: "내가 좋아하는 음악", coverImage: "Music"))
                PostBlockView(post: Post(title: "홍차", coverImage: "BlackTea"))
            }
            HStack{
                PostBlockView()
                PostBlockView()
            }
        }
            .navigationBarTitle("내가 좋아하는 것", displayMode: .large)
    }
}

struct WIL_Previews: PreviewProvider {
    static var previews: some View {
        WIL()
    }
}
