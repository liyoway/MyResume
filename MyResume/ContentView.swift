//
//  ContentView.swift
//  MyResume
//
//  Created by yoway Li on 2024/1/25.
//

import SwiftUI

struct ContentView: View {
    private let me = Resume.shared
    var body: some View {
        VStack(spacing: 30) {
            HStack {
                Image("avatar")
                    .resizable().aspectRatio(contentMode: .fit )
                    .padding()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 200)
                
                VStack(spacing: 20) {
                    Text(me.name)
                        .font(.title.bold())
                    Text(me.title)
                    Label(
                        title: {Text(me.location) },
                        icon: { Image(systemName: "location.fill") }
                    ).foregroundColor(.secondary)
                }
            }
            Text(me.bio).font(.title3).lineSpacing(10.0)
            
            Text("連絡先")
                .foregroundColor(.white)
                .font(.title2.bold())
                .padding(.vertical, 10)
                .frame(maxWidth: .infinity)
                .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.brown))
                .padding(.horizontal)
            
            HStack {
                Text("スキル")
                    .font(.title2.bold())
                Spacer()
                }
            
            HStack {
                
            }
                            
       }.padding()
     }
}

#Preview {
    ContentView()
}
