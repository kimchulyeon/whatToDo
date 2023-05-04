//
//  WeatherView.swift
//  myApp1
//
//  Created by chulyeon kim on 2023/05/04.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .center, spacing: 15) {
                    Text("서울")
                        .font(.title2)
                    
                    Image("clear")
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal, 30)
                    
                    Text("26°C")
                    Text("broken clouds")
                    
                    Spacer()
                    
                    Divider()
                        .frame(height: 1)
                        .background(.brown)
                        .padding(.horizontal, 20)
                    
                    // 🌈🌈🌈 TODO 🌈🌈🌈 구조 바꾸기
                    HStack(alignment: .top) {
                        VStack {
                            Text("미세먼지")
                            Text("보통")
                            Text("(39)")
                        }//{vstack}

                        Spacer()
                        
                        VStack {
                            Text("비")
                            Text("0mm")
                        }//{vstack}
                    }//{hstack}
                    .padding(.horizontal, 80)
                    .padding(.vertical, 20)
                }//{vstack}
            }//{vstack}
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        print("map clicked:::")
                    } label: {
                        Image(systemName: "map")
                    }

                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("refresh clicked:::")
                    } label: {
                        Image(systemName: "arrow.clockwise")
                    }

                }
            }//{toolbar}
        }//{navview}
    }//{body}
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}
