//
//  TodoCreate.swift
//  TROL
//
//  Created by 김혜수 on 2022/06/10.
//

import SwiftUI

struct TodoCreateView: View {
    
    @State private var newTodo: String = ""
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack(){
            HStack{
                Spacer()
                Button() {
                    presentation.wrappedValue.dismiss()
                } label: {
                    Text("닫기")
                        .font(.system(size: 17))
                        .padding(.horizontal)
                        .foregroundColor(.black)
                }
            }
            
            HStack(alignment: .bottom, spacing: 175){
                Text("할 일 추가하기").font(.system(size: 28))
            }
            TextField(
                "내용을 적어 주세요!",
                text: $newTodo
            ).disableAutocorrection(true)
            TodoInfoView()
            
            
            Button(action: {
                presentation.wrappedValue.dismiss()
            }) {
                Text("저장하기")
                    .foregroundColor(Color.white)
                    .bold()
                    .font(.system(size: 17))
                    .padding()
                    .frame(maxWidth: .infinity)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            //.background(Color("trolGreen"))
                            .fill(Color.green)
                            .frame(width: 354, height: 50)
                    )
                
            }
            
        }
    }
}

struct TodoInfoView: View {
    var body: some View {
            HStack{
                VStack(alignment: .leading){
                Text("뭐부터 해야할 지 모르겠다면 책을 눌러보세요!")
                    .font(.system(size: 12))
                    .bold()
                    .padding(.leading, 10)
                
                Text("역할 도감에서 가이딩 받을 수 있어요.")
                    .font(.system(size: 12))
                    .padding(.leading, 10)
                }
                Spacer()
                Text("📒")
                    .font(.system(size: 30))
                    .padding(.trailing, 10)
                
            }
            .frame(width: 354, height: 60)
            .background(Color("trolIvory"))
            .cornerRadius(10)
            
            
    }
}

struct TodoCreateView_Previews: PreviewProvider {
    static var previews: some View {
        TodoCreateView()
    }
}
