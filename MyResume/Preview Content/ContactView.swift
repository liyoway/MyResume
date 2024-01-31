//
//  ContactView.swift
//  MyResume
//
//  Created by yoway Li on 2024/1/26.
//

import SwiftUI

struct ContactView: View {
    @Binding var isShowing: Bool

    var body: some View {
        VStack(spacing: 20) {
            // 聯絡方式的圖標
            HStack(spacing: 20){
                // 電話圖標
                Image(systemName: "phone.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                    .padding(10)
                    .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.brown))
                    .onTapGesture { openUrl(Resume.shared.phoneUrl) }
                
                // LinkedIn圖標
                Image("LinkedIn")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .onTapGesture { openUrl(Resume.shared.socialMedia[0].url) }
                
                // 電子郵件圖標
                Image("メール")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .onTapGesture { openUrl(Resume.shared.socialMedia[1].url) }
                
                // GitHub圖標
                Image("Github")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                    .padding(10)
                    .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.gray))
                    .onTapGesture { openUrl(Resume.shared.Github) }
            }

            // 取消按鈕
            Button {
                isShowing = false
            } label: {
                Text("取消")
                    .font(.title3)
                    .foregroundStyle(.gray)
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color(uiColor: .tertiarySystemBackground)))
        .padding()
    }

    // 打開URL的函數
    func openUrl(_ url: String) {
        if let url = URL(string: url) {
            UIApplication.shared.open(url)
        } else {
            print("エラー")
        }
    }
}

// 預覽提供者
struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(isShowing: .constant(true))
    }
}
