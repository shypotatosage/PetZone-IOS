//
//  Format.swift
//  PetZone-IOS
//
//  Created by Marsha Likorawung  on 24/05/23.
//

import Foundation

func DateFormat(_ date: Date)->String{
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .short
    dateFormatter.doesRelativeDateFormatting = true
    let dateString = dateFormatter.string(from:date)
    return dateString
}

func NumberFormat(_ value: Int)->String{
    let currencyFormatter = NumberFormatter()
    currencyFormatter.numberStyle = .currencyISOCode
    currencyFormatter.locale = Locale(identifier: "id_ID")

    let formattedValue = currencyFormatter.string(from: value as NSNumber)!
    return formattedValue + ",00"
}
