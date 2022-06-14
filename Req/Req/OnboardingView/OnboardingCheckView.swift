//
//  OnboardingCheckVIew.swift
//  Req
//
//  Created by Seyoung Choi on 2022/06/14.
//

import SwiftUI

struct OnboardingCheckView: View {
    // 사용자 안내 온보딩 페이지를 앱 설치 후 최초 실행할 때만 띄우도록 하는 변수.
    // @AppStorage에 저장되어 앱 종료 후에도 유지됨.
    @AppStorage("_isFirstLaunching") var isFirstLaunching: Bool = true
    
    var body: some View {
        Text("App Main")
        // 앱 최초 구동 시 전체화면으로 OnboardingTabView 띄우기
            .fullScreenCover(isPresented: $isFirstLaunching) {
                OnboardingTabView(isFirstLaunching: $isFirstLaunching)
            }
    }
}

struct OnboardingCheckView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCheckView()
    }
}
