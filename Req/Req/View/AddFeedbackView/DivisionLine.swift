//
//  DivisionLine.swift
//  Req
//
//  Created by 이재웅 on 2022/06/12.
//

import SwiftUI

struct DivisionLine: View {
    var body: some View {
        Rectangle()
            .frameRatio(width: 358.0, height: 1.0, alignment: .center)
            .foregroundColor(Color.LightGrey)
    }
}

struct DivisionLine_Previews: PreviewProvider {
    static var previews: some View {
        DivisionLine()
    }
}
