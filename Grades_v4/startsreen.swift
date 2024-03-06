//
//  startsreen.swift
//  Grades_v4
//
//  Created by Etienne Hüttl on 16.03.24.
//

import SwiftUI

struct startsreen: View {
    var body: some View {
        NavigationView{
            ScrollView{
                Divider()
                schuljahr()
                
            }.navigationBarItems(trailing: Button(action: {
                
            }){
                Image(systemName: "plus.rectangle.on.folder.fill")
                    .resizable()
                    .scaledToFit()
                    .padding(4)
                    .frame(width: 45, height: 35)
                
                    .foregroundColor(.blue)
            } )
            .navigationTitle("GRADES").frame(maxWidth: .infinity, alignment: .leading)
        }
        
        
    }
}

#Preview {
    startsreen()
}
