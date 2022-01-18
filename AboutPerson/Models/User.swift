//
//  User.swift
//  AboutPerson
//
//  Created by Юрий Скворцов on 18.01.2022.
//

struct User {
    let loginName: String
    let password: String
    let person: Person
    
    static func getUser() -> [User] {
        [
            User(loginName: "Vader",
                 password: "Dark",
                 person: Person(name: "Darth",
                                surname: "Vader",
                                fraction: "Empire",
                                profession: "Sith lord",
                                hobby: "Killing jedi",
                                image: "Vader")),
            User(loginName: "Luke",
                 password: "Light",
                 person: Person(name: "Luke",
                                surname: "Skywalker",
                                fraction: "Rebels",
                                profession: "Pilot",
                                hobby: "Learn to be a jedi",
                                image: "Luke"))
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
    let image: String
}
