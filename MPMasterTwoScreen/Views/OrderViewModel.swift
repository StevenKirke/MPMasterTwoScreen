//
//  OrderViewModel.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 18.11.2020.
//

import Foundation

class OrderViewModel: ObservableObject {
    @Published var person: Person
    
    init(person: Person) {
        self.person = person
    }
}

