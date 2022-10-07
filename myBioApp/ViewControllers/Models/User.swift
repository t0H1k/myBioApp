//
//  Person.swift
//  myBioApp
//
//  Created by Anton Boev on 04.10.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let age: String
    let work: Company
    let hobby: Interest
    let contact: Link
    let bio: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Антон",
            surname: "Боев",
            photo: "userPhoto",
            age: "33",
            work: Company.getCompany(),
            hobby: Interest.getInterest(),
            contact: Link.getLink(),
            bio: """
            Родился в 1989 году в городе Москве. Закончил школу и поступил в МФПА (с 2011 года Синергия). Получил диплом маркетолога уже работая по специальности. 15 лет работал организатором мероприятий. Делал самые сложные мероприятия с автомобилями, строил внедорожные трассы, прокладывал маршруты по самым удаленным местам нашей необъятной страны. В 2022 году жена помогла собраться с мыслями и пойти учиться на новую специальность, так как история автомобилей в России закончилась.
               
            """
        )
    }
}

struct Company {
    let title: String
    let jobTitle: JobTitle
    let department: Department
    
    static func getCompany() -> Company {
        Company(
            title: "Chariot Event",
            jobTitle: .testDrive,
            department: .marketing
        )
    }
}

enum JobTitle: String {
    case testDrive = "Тест-драйв директор"
    case seo = "SEO"
    case fin = "Бухгалтер"
    case driver = "Автомобильный инструктор"
}

enum Department: String {
    case marketing = "Event менеджер"
    case newBis = "Развитие клиентской базы"
    case worker = "Привлеченный сотрудник"
}

struct Interest {
    let interest: String
    let details: InfoAboutHobby
    
    static func getInterest() -> Interest {
        Interest(
            interest: "Автомобили",
            details: .drive
        )
    }
}

enum InfoAboutHobby: String {
    case drive = "Езда на автомобилях"
    case repair = "Ремонт автомобилей"
    case build = "Создание автомобилей"
}

struct Link {
    let phone: String
    let email: String
    let city: String
    
    static func getLink() -> Link {
        Link(
            phone: "89031180745",
            email: "boev03@gmail.com",
            city: "Москва"
        )
    }
}
