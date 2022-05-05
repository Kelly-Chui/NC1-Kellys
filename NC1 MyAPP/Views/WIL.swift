//
//  WIL.swift
//  NC1 MyAPP
//
//  Created by Kelly Chui on 2022/05/02.
//

import SwiftUI

struct WIL: View {
    var arrayWIL: [Post]
    var body: some View {
        
        VStack{
            HStack{
                PostBlockView(post: arrayWIL[0])
                PostBlockView(post: arrayWIL[1])
            }
            HStack{
                PostBlockView(post: arrayWIL[2])
                PostBlockView(post: Post())
            }
            HStack{
                PostBlockView(post: Post())
                PostBlockView(post: Post())
            }
        }
            .navigationBarTitle("내가 좋아하는 것", displayMode: .large)
    }
}

struct WIL_Previews: PreviewProvider {
    static var previews: some View {
        WIL(arrayWIL: [Post(), Post(), Post()])
    }
}
