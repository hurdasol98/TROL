//
//  MyTravelView.swift
//  TROL
//
//  Created by MBSoo on 2022/06/07.
//

import SwiftUI
import UIKit

struct MyTravelView: View {
    
    @State private var travelName : String = "졸업여행" //여행 이름
    @State private var isShowModal = false
    @State private var isTravel: Bool = false
    @State private var myCode : String = "3BF5GKS"  //나의 코드
    @State private var FriendCode = ""
    @State var testFriends: [Friend] = Friend.friends
    @State var selectedFriend: Friend
    var pasteBoard = UIPasteboard.general //나의 코드 누르면 복사
    
    let columns = [ GridItem(.adaptive(minimum: 100)) ]
    
    var body: some View {
        // 타이틀
        VStack(alignment: .leading) {
            Text("진행중인 여행")
                .font(.system(size: 28))
                .bold()
                .padding()
            
            ScrollView {
                // 티켓 상단
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(travelName)
                                .font(.custom("Happiness-Sans-Bold", size: 20))
                            //                                .bold()
                            
                            Text("2022.06.26~2022.07.01")
                                .font(.system(size: 12))
                        }
                        
                        Spacer()
                        //설정 들어가기 버튼
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "gearshape.fill")
                                .foregroundColor(.black)
                        })
                        
                    }
                    
                    Spacer()
                    
                    TextField("+ 친구코드 추가하기", text: $FriendCode)
                        .padding()
                        .frame(width: 312, height: 44)
                        .background(.white)
                        .cornerRadius(10)
                        .disableAutocorrection(true) //자동수정 막기
                        .font(.custom("Happiness-Sans-Regular", size: 15))
                    
                }
                .padding(25)
                .frame(width: 354, height: 176)
                .background(Color("trolYellow"))
                .cornerRadius(10)
                
                // 티켓 하단
                VStack(alignment: .leading) {
                    Text("나의 코드")
                        .font(.system(size: 12))
                        .font(.custom("Happiness-Sans-Bold", size: 12))
                        .bold()
                    //나의 코드 누르면 복사
                    Button(action: {
                        pasteBoard.string = self.myCode
                    }, label: {
                        Text(myCode)
                            .bold()
                            .padding()
                            .foregroundColor(.black)
                            .frame(width: 312, height: 44, alignment: .leading)
                            .background(.white)
                            .cornerRadius(10)
                    })
                    
                }
                .padding(25)
                .frame(width: 354, height: 104)
                .background(Color("trolYellow"))
                .cornerRadius(10)
                
                
                // 친구들의 역할
                VStack(alignment: .leading) {
                    Text("친구들의 역할")
                        .font(.system(size: 22))
                        .bold()
                        .padding(.top)
                        .padding(.horizontal)
                    
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(testFriends.indices, id: \.self) { i in
                            
                            Button {
                                print("\(testFriends[i].name) called")
                                self.isShowModal = true
                                self.selectedFriend = self.testFriends[i]
                            } label: {
                                GridView(testFriend: $testFriends[i])
                                    .sheet(isPresented: self.$isShowModal) {
                                        FriendRoleView(testFriend: $selectedFriend)
                                    }
                            }
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
    
}



struct MyTravelView_Previews: PreviewProvider {
    static var previews: some View {
        MyTravelView(selectedFriend: Friend.friends[0])
    }
}
