//
//  Constant.swift
//  MyResumeApp
//
//  Created by Jane Chao on 22/04/20.
//

import Foundation

typealias Experience = (title: String, company: String, start: String, end: String)

struct Resume {
    static let shared = Resume()
    let name     = "リ　ユイ"
    let title    = "iOSエンジニア"
    let location = "位置：台湾"
    let bio      = """
こんにちは、私はリユイと申します。
現在は、アプリアエンジニアとしての転職を目指しており、アプリ開発に関するスキルを磨いています。
"""
    let skills   = ["日本語", "python", "swift", "mySQL"]
    let experiences: [Experience] = [("カスタマーサポート",
                                      "TaskUs台湾",
                                      "2020 年 4 月",
                                      "現在に至る")]
                                      
    let phoneUrl = "tel://+886920279197"
    let socialMedia: [(name: String, url: String)] = [("LinkedIn","www.linkedin.com/in/リ-ユイ-李囿緯-59b678285"),
                                                      ("github","https://github.com/liyoway"),
                                                      ("メール","liyoway@gmail.com")]
}

