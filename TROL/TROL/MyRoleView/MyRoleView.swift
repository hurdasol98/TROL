//
//  MyRoleView.swift
//  TROL
//
//  Created by MBSoo on 2022/06/07.
//

import SwiftUI

struct MyRoleView: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                Text("나의 여행티켓").bold().font(.system(size: 28))
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("trolYellow"))
                        .frame(width: 354, height: 174)
                        
                    VStack(alignment: .leading){
                        Text("졸업여행")
                            .font(.system(size: 20))
                            .bold()
                            .padding(.leading, -140)
                        Text("2022.06.26~2022.07.01")
                            .font(.system(size: 12))
                            .padding(.leading, -140)
                        
                        HStack{
                            VStack{
                                Text("이름").font(.system(size: 12)).padding(.leading, -140)
                                Text("바밤바").bold().font(.system(size: 20)).padding(.leading, -140)
                            }
                            VStack{
                                Text("역할").font(.system(size: 12)).padding(.leading, -80)
                                Text("총무").bold().font(.system(size: 20)).padding(.leading, -80)
                            }
                        }
                    }
                    
                    Image("HiBear")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 174)
                        .offset(x: 110, y: 30)
                        .mask(
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 354, height: 174)
                        )
                    TicketPunchingView()
                }
            }
            TicketInfoView()
        }
    }
}

struct MyRoleView_Previews: PreviewProvider {
    static var previews: some View {
        MyRoleView()
    }
}
