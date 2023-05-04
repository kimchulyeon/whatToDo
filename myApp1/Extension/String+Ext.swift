//
//  String+Ext.swift
//  myApp1
//
//  Created by chulyeon kim on 2023/05/04.
//

import Foundation

extension String {
    static func getTemp(temp: Double) -> String {
        let realTemp = temp - 273.15
        return String(format: "%.0f", realTemp) + "°C"
    }
}
