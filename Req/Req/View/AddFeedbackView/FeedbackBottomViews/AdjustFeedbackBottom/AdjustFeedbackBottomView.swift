//
//  AdjustFeedbackBottomView.swift
//  Req
//
//  Created by 이재웅 on 2022/06/13.
//

import SwiftUI

struct AdjustFeedbackBottomView: View {
    @Binding var currentPin: Pin
    
    private var title: String {
        if let title = currentPin.title { return title }
        else { return "title을 불러오지 못했습니다." }
    }
    
    private var description: String {
        if let description = currentPin.description { return description }
        else { return "description을 불러오지 못했습니다." }
    }
    
    var body: some View {
        VStack(alignment: .leading ,spacing: 0) {
            Spacer()
                .frameRatio(height: 24.0)
            AdjustFeedbackTitle(title: title)
            Spacer()
                .frameRatio(height: 20.0)
            DivisionLine()
            Spacer()
                .frameRatio(height: 20.0)
            AdjustFeedbackDescription(description: description)
                .frame(maxHeight: 130.0)
        }
    }
}

