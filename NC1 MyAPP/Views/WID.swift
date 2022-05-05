//
//  WID.swift
//  NC1 MyAPP
//
//  Created by Kelly Chui on 2022/05/02.
//

import SwiftUI

struct WID: View {
    var body: some View {
        
        VStack{
            HStack{
                PostBlockView(post: Post(title: "TMI",coverImage: "TMI"))
                PostBlockView()
            }
            HStack{
                PostBlockView()
                PostBlockView()
            }
        }
            .navigationBarTitle("내가 하고 있는 것", displayMode: .large)
    }
}

struct WID_Previews: PreviewProvider {
    static var previews: some View {
        WID()
    }
}
