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
    let adress = "ул. Острякова д.5, кв.167, подъезд 1, этаж 7"
    let numberUSPD = "123456789"
    let flowdiagram = "Канальная"
    let numberWFM = "987654321"
    var blockElements = element
    
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

let element: [String: String] = [
    "subscriberData": "Прослушка с помощью лидаров пылесоса — новая угроза частной жизни. Делаем лазерный микрофон в домашних условиях",
    "connectedServices": "В качестве альтернативы, если контекст уже предоставляет информацию о типе, такую ​​как аргумент функции или уже типизированная переменная или константа, вы можете создать пустой набор с пустым литералом массива",
    "oneTimeServices": "Выражение, следующее за return, рассматривается как аргумент return"
]

