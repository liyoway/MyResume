//
//  shape.swift
//  MyResume
//
//  Created by yoway Li on 2024/1/26.
//

import SwiftUI

struct shape: Shape {
    var lineWidth: CGFloat = 10
    var dotWidth: CGFloat = 30
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addEllipse(in: CGRect(x: rect.midX - (dotWidth / 2),
                                   y: rect.midY - (dotWidth / 2),
                                   width: dotWidth,
                                   height: dotWidth))
        
        path.addRect(CGRect(x: rect.midX - (lineWidth / 2),
                            y: rect.minY,
                            width: lineWidth,
                            height: rect.height ))
        
                return path
    }
    
}

#Preview {
    shape()
}
