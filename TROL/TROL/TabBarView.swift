//
//  TabBarView.swift
//  TROL
//
//  Created by MBSoo on 2022/06/07.
//

import SwiftUI

struct TabBarView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection){
            
        }
    }
}


struct MyRoleTab:View{
    var body: some View{
        Image(systemName: "person.crop.square.fill")
            .resizable()
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
