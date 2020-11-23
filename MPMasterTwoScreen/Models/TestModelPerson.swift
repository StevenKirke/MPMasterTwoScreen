//
//  TestModelPerson.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 18.11.2020.
//

import Foundation

struct Person {
    let firstName = "Иван"
    let secondName = "Иванов"
    let thirdName = "Иванович"
    let outfit = "Первичное подключение абонента"
    let data = "03.10.2018"
    let onsetTime = "12:00"
    let lastTime = "14:00"
    let firstNumberPhone = "8 (909) 965 65 41"
    let secondNumberPhone = "8 (495) 821 12 12"
    
    var fullName: String {
        var result = ""
        result += secondName.isEmpty ? "" : secondName + " "
        result += firstName.isEmpty ? "" : firstName + " "
        result += thirdName.isEmpty ? "" : thirdName
        return result.trimmingCharacters(in: .whitespaces)
    }
    
    var dateAndTime: String {
        "\(data) | \(onsetTime) - \(lastTime)"
    }
}

