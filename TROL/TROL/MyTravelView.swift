//
//  MyTravelView.swift
//  TROL
//
//  Created by MBSoo on 2022/06/07.
//

import SwiftUI
//선 그리기
struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}

struct MyTravelView: View {
    //친구코드
    @Environment(\.presentationMode) var presentationMode
    @State var FriendCode: String = ""
    //3칸
    let layout :[GridItem] = [
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
        GridItem(.fixed(100))
        
    ]
    @State var isModalOn = false
    
    //let data = [String](repeating: "TrolHi", count: 5)
    var data = ["TrolHi", "TrolBye","TrolLogo"]
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                Text("진행중인 여행")
                    .font(.system(size: 28))
                    .bold()
                
                ZStack(alignment: .topLeading){
                    Rectangle()
                        .foregroundColor(Color("TrolYellow"))
                        .cornerRadius(10)
                    VStack(alignment: .leading){
                        HStack{
                            VStack(alignment: .leading){
                                Text("졸업여행")
                                    .bold()
                                    .font(.system(size: 20))
                                Text("2022.06.26 ~ 2022.07.01")
                                    .font(.system(size: 12))
                            }
                            .padding()
                            
                            Spacer()
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "gearshape.fill")
                                    .padding()
                                    .font(.system(size: 17))
                                    .foregroundColor(.black)
                            })
                            
                        }//여행 정보 및 설정
                        Spacer().frame(height: 55)
                        TextField("+ 친구코드추가하기",text: $FriendCode)
                            .padding()
                            .background(.white)
                            .cornerRadius(10)
                            .padding()
                        Line()// 중간 dotted line 스타일 바꾸기
                            .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                            .frame(height: 5)
                            .foregroundColor(.white)
                        
                        Text("나의 코드")
                            .bold()
                            .padding(.leading)
                        ZStack(alignment: .leading){
                            Rectangle()
                                .foregroundColor(.white)
                                .cornerRadius(10)
                            Text("3BF5GKS")
                                .padding()
                                .font(.system(size: 17))
                            
                        }
                        .padding()
                    }
                }
                Text("친구들의 역할")
                    .bold()
                    .font(.system(size: 22))
                LazyVGrid(columns: layout, spacing: 25){
                    ForEach(data, id: \.self){ i in
                        Button(action: {
                            isModalOn = true
                        }, label:{
                            ZStack(alignment: .bottomLeading){
                                Image(i)
                                    .resizable()
                                    .frame(width: 108, height: 108)
                                Text("총무")
                                    .padding()
                                    .foregroundColor(.black)
                            }
                            
                            
                        })
                        .fullScreenCover(isPresented: $isModalOn){
                            Text("h")
                        }
                        
                        
                    }
                }
            }
            
            
        }.padding()
        
    }
}

struct MyTravelView_Previews: PreviewProvider {
    static var previews: some View {
        MyTravelView()
    }
}
