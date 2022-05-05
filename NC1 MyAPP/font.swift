//
//  font.swift
//  NC1 MyAPP
//
//  Created by Kelly Chui on 2022/05/05.
//

import SwiftUI

struct font: View {
    var body: some View {
        ZStack{
            Text("뭐")
        }
        .onAppear{
            for family: String in UIFont.familyNames {
                            print(family)
                            for names : String in UIFont.fontNames(forFamilyName: family){
                                print("=== \(names)")
                            }
            }
        }
    }
}

struct font_Previews: PreviewProvider {
    static var previews: some View {
        font()
    }
}
