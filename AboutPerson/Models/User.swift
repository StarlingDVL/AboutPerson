//
//  User.swift
//  AboutPerson
//
//  Created by Юрий Скворцов on 18.01.2022.
//

struct User {
    let userName: String
    let password: String
    let person: [Person]
    
    static func getPerson() -> [Person] {
        [
            Person(name: "Darth",
                   surname: "Vader",
                   fraction: "Empire",
                   profession: "Sith lord",
                   hobby: "Killing a jedi"),
            Person(name: "Luke",
                   surname: "Skywalker",
                   fraction: "Rebels",
                   profession: "Pilot",
                   hobby: "learn to be a jedi")
        ]
    }
}

struct Person {
    let name: String
    let surname: String
    var fullName: String {
        "\(name) \(surname)"
    }
    
    let fraction: String
    let profession: String
    let hobby: String
}
