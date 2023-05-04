//
//  MainView.swift
//  myApp1
//
//  Created by chulyeon kim on 2023/05/04.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            // 날씨 페이지
            WeatherView()
                .tabItem {
                    VStack(spacing: 3) {
                        Image(systemName: "sun.max")
                            .foregroundColor(.green)
                        Text("날씨")
                    }
                }
                .tag(0)
            
            // 영화 페이지
            MovieView()
                .tabItem {
                    VStack(spacing: 3) {
                        Image(systemName: "film")
                        Text("영화")
                    }
                }
                .tag(1)
        }//{tabview}
    }//{body}
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
