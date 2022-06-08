//
//  TabBarView.swift
//  TROL
//
//  Created by MBSoo on 2022/06/07.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("나의 여행티켓").bold().font(.custom("해피니스 산스", size: 28))
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.yellow)
                    .frame(width: 354, height: 174)
                VStack{
                    Text("졸업여행")
                    Text("2022.06.26~2022.07.01")
                    HStack{
                        Text("이름")
                        Text("역할")
                    }
                    HStack{
                        Text("바밤바")
                        Text("총무")
                    }
                }
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
