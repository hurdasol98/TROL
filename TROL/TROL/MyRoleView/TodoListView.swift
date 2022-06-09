//
//  TodoList.swift
//  TROL
//
//  Created by 김혜수 on 2022/06/08.
//

import SwiftUI

struct TodoList: View {
    var body: some View {
        HStack{
            Text("내가 할 일").bold().font(.system(size: 28))
            Spacer()
            Button("편집하기"){
                
            }
        }
    }
}

struct TodoList_Previews: PreviewProvider {
    static var previews: some View {
        TodoList()
    }
}
