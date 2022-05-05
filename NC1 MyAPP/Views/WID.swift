//
//  WID.swift
//  NC1 MyAPP
//
//  Created by Kelly Chui on 2022/05/02.
//

import SwiftUI

struct WID: View {
    var arrayWID: [Post]
    var body: some View {
        
        VStack{
            HStack{
                PostBlockView(post: arrayWID[0])
                PostBlockView(post: arrayWID[1])
            }
            HStack{
                PostBlockView(post: arrayWID[2])
                PostBlockView()
            }
            HStack{
                PostBlockView(post: Post())
                PostBlockView(post: Post())
            }
        }
            .navigationBarTitle("내가 하고 있는 것", displayMode: .large)
    }
}

struct WID_Previews: PreviewProvider {
    static var previews: some View {
        WID(arrayWID: [Post(), Post(), Post()])
    }
}
