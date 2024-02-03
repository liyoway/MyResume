//
//  ContentView.swift
//  MyResume
//
//  Created by yoway Li on 2024/1/25.
//

import SwiftUI

struct ContentView: View {
    private let me = Resume.shared
    @State private var isShowingContact = false
    @State private var selectedSkill: (name: String, explanation: String)?

    var body: some View {
        
        ScrollView {
            VStack(spacing: 30) {
                HStack(spacing: 25) {
                    Image("avatar")
                        .resizable()
                        .aspectRatio(contentMode: .fill) // 填充模式可能更適合矩形
                        .frame(width: 150, height: 200) // 指定寬和高來確定矩形大小
                        .clipShape(RoundedRectangle(cornerRadius: 10)) // 圓角矩形
                        .padding(20)
                    
                
                    VStack(spacing: 20) {
                        Text(me.name)
                            .font(.title.bold())
                        Text(me.title)
                        Label(
                            title: { Text(me.location) },
                            icon: { Image(systemName: "location.fill") }
                        ).foregroundColor(.secondary)
                    }
                }
                
                
                        Text(me.bio)
                            .font(.callout)
                            .lineSpacing(10.0)
                            .fixedSize(horizontal: false, vertical: true)
                    
                
                
                Button{ isShowingContact = true } label: {
                    Text("連絡先")
                        .foregroundColor(.white)
                        .font(.title2.bold())
                        .padding(.vertical, 10)
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.brown))
                        .padding(.horizontal)

                }
                                
                Text("テクニカルスキル")
                    .font(.title2.bold())
                    .frame(maxWidth: .infinity, alignment: .center)

                HStack {
                    ForEach(me.skills, id: \.name) { skill in
                        Button(action: {
                            self.selectedSkill = skill
                        }) {
                            VStack {
                                Image(skill.name) // 確保這些圖片名稱是正確的
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 50)
                                Text(skill.name)
                                    .foregroundStyle(Color.accentColor)
                            }
                        }.frame(width: 80)
                    }
                }

                // 顯示所選技能的詳細信息
                if let skill = selectedSkill {
                    Text(skill.explanation)
                        .font(.body)
                        .padding()
                        .transition(.slide)
                }

                Text("職歴")
                    .font(.title2.bold())
                    .frame(maxWidth: .infinity, alignment: .center)
                
                    VStack(spacing: 8) {
                        ForEach(me.experiences, id: \.title) { exp in
                            Text("\(exp.start) - \(exp.end)")
                                .foregroundStyle(.secondary)
                            Text(exp.title)
                                .bold()
                            Text(exp.company)
                        }
                    }
            }.padding()
                .overlay(Color.black.opacity(isShowingContact ? 0.5 : 0))
                .onTapGesture { isShowingContact = false }
                .overlay(alignment: .top) {
                    if isShowingContact {
                        ContactView(isShowing: $isShowingContact)
                            .offset(y: UIScreen.main.bounds.maxY * 0.42)
                            .transition(.slide)
                    }
                }.animation(.spring(), value: isShowingContact)
        }.background(Color(uiColor: .secondarySystemBackground))
    }
}

#Preview {
    ContentView()
}
