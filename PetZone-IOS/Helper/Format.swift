//
//  Format.swift
//  PetZone-IOS
//
//  Created by Marsha Likorawung  on 24/05/23.
//

import Foundation

//untuk format tanggal jadi yesterday, today atau May 9, 2023
func DateFormat(_ date: Date)->String{
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .short
    dateFormatter.doesRelativeDateFormatting = true
    let dateString = dateFormatter.string(from:date)
    return dateString
}

//untuk format harga dari int menjadi mata uang indonesia sesuai titiknya
func NumberFormat(_ value: Int)->String{
    let currencyFormatter = NumberFormatter()
    currencyFormatter.numberStyle = .currencyISOCode
    currencyFormatter.locale = Locale(identifier: "id_ID")

    let formattedValue = currencyFormatter.string(from: value as NSNumber)!
    return formattedValue + ",00"
}

//untuk format tanggal May 9, 2023
func DateFormats(_ date: Date)->String{
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .short
    let dateString = dateFormatter.string(from:date)
    return dateString
}
