//
//  Constant.swift
//  MyResumeApp
//
//  Created by Jane Chao on 22/04/20.
//

import Foundation

// 定義Experience類型的別名
typealias Experience = (title: String, company: String, start: String, end: String)

// Resume結構，用來保存個人簡歷信息
struct Resume {
    // 使用單例模式
    static let shared = Resume()

    // 基本信息
    let name = "リ　ユイ"
    let title = "iOSエンジニア"
    let location = "位置：台湾"
    let bio = "こんにちは、私はリユイと申します。現在は、アプリアエンジニアとしての転職を目指しており、アプリ開発に関するスキルを磨いています。"

    // 技能列表
    let skills: [(name: String, explanation: String)] = [
        ("Swift", "基本的なコード記述と、指示、改修、簡単なアプリの作成が可能。"),
        ("JLPT", "2021年12月日本語能力試験 1 級取得。"),
        ("SQL", "基本的なコード記述と、指示、改修可能。"),
        ("Python", "基本的なコード記述と、指示、改修、グラフの作成が可能。")
    ]

    // 經歷列表
    let experiences: [Experience] = [
        ("カスタマーサポート", "TaskUs台湾", "2020 年 4 月", "現在に至る")
    ]

    // 聯絡方式
    let Github = "https://github.com/liyoway"
    let phoneUrl = "tel://+86123456789"
    let socialMedia: [(name: String, url: String)] = [
        ("LinkedIn", "https://www.linkedin.com/in/リ-ユイ-李囿緯-59b678285"),
        ("メール", "mailto:liyoway@gmail.com")
    ]
}
