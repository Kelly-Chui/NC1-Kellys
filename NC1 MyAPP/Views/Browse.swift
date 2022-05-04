//
//  Browse.swift
//  NC1 MyAPP
//
//  Created by Kelly Chui on 2022/05/01.
//

import SwiftUI

struct Browse: View {
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
                            .font(.title)
                        Text("崔鎭原")
                        Spacer()
                        Text("화이팅")
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
                                .padding(.leading)
                            Spacer()
                            Button("전체 보기") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                            .padding(.trailing)
                        }
                        ScrollView(.horizontal) {
                            HStack(spacing: 20) {
                                ForEach(0..<5) {
                                    Text("Item \($0)")
                                        .foregroundColor(.white)
                                        .font(.largeTitle)
                                        .frame(width: 300, height: 200)
                                        .background(Color.black)
                                }
                            }
                        }
                    }
                    //내가 좋아하는 것
                }
                Divider()
                Group{
                    VStack{
                        HStack{
                            Text("내가 하고 있는 것")
                                .padding(.leading)
                            Spacer()
                            Button("전체 보기") {
                                .
                            }
                            .padding(.trailing)
                        }
                        ScrollView(.horizontal) {
                            HStack(spacing: 20) {
                                ForEach(0..<5) {
                                    Text("Item \($0)")
                                        .foregroundColor(.white)
                                        .font(.largeTitle)
                                        .frame(width: 300, height: 200)
                                        .background(Color.brown)
                                }
                            }
                        }
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
