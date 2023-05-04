//
//  SplashView.swift
//  myApp1
//
//  Created by chulyeon kim on 2023/05/04.
//

import SwiftUI

struct SplashView: View {
    @State var isLaunch: Bool = false
    
    var body: some View {
        if self.isLaunch {
            // 메인 페이지
            MainView()
        } else {
            // 맨 처음 launch view
            Text("Loading.....")
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                        withAnimation(.easeInOut(duration: 1.0)) {
                            self.isLaunch = true
                        }
                    })
                }
        }
    }//{body}
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
