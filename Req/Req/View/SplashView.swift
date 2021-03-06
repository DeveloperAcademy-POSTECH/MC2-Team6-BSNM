//
//  SplashView.swift
//  Req
//
//  Created by Choi Inho on 2022/06/19.
//

import SwiftUI

struct SplashView: View {
    @State var isActive: Bool = false

    var body: some View {
        VStack {
            if self.isActive {
                OnboardingCheckView()
            } else {
                Splash()
            }
        }
            .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}



struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}

struct Splash: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .background(.white)
                .ignoresSafeArea()

            Rectangle()
                .background(.clear)
                .foregroundColor(.clear)
                .border(Color.LightGrey, width: 1)
                .paddingRatio(EdgeInsets(top: 60, leading: 20, bottom: 28, trailing: 20))
                .ignoresSafeArea()

            VStack {
                Spacer()
 
                Image("SplashImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frameRatio(width: 184.18, height: 126.62)
                    .paddingRatio(.bottom, 42)

                Divider()
                    .background(Color.Grey)
                    .frameRatio(width: 313)

                Text("REQ로 패션을 기록하다")
                    .foregroundColor(Color.DarkGrey)
                    .font(.custom("Apple SD Gothic Neo Bold", size: 18))
                    .paddingRatio(11)

                Divider()
                    .background(Color.Grey)
                    .frameRatio(width: 313)

                Spacer()
                    .frameRatio(height: 253)

                Text("BSNM")
                    .font(.custom("Apple SD Gothic Neo Bold", size: 18))
                    .foregroundColor(Color.Grey)
                    .paddingRatio(.bottom, 41)
            }
        }
    }
}

