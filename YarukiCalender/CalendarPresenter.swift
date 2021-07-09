//
//  CalendarPresenter.swift
//  YarukiCalender
//
//  Created by 石澤大輔 on 2021/07/10.
//

import Foundation

class CalendarPresenter {
    let date = Date()
    let calendar = Calendar(identifier: .gregorian)
    let formatter = DateFormatter()

    func getToday() {
        formatter.dateStyle = .medium
        formatter.locale = Locale(identifier: "ja_JP")
        print(formatter.string(from: date))
    }
}

extension Calendar {
    func startOfMonth(for date: Date) -> Date {
        let comps = dateComponents([.month, .year], from: date)
        return self.date(from: comps)!
    }
}
