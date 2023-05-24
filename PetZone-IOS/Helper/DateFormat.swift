//
//  DateFormat.swift
//  PetZone-IOS
//
//  Created by Marsha Likorawung  on 24/05/23.
//

import Foundation

func DateFormat(_ date: Date)->String{
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .short
    dateFormatter.timeStyle = .short
    dateFormatter.doesRelativeDateFormatting = true

    let dateString = dateFormatter.string(from:date)
    return dateString
}

