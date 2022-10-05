//
//  Person.swift
//  myBioApp
//
//  Created by Anton Boev on 04.10.2022.
//

struct Person {
    
    let username: String
    let password: String
    
    let titleName: String
    let personName: String
    let personSurname: String
    let personDateOfBirth: String
    let personWork: String
    let personHobby: String
    
    let contactNumber: String
    let contactEmail: String
    let contactCity: String
    
    let bioHistory: String
    
    static func getPersonalData() -> Person {
        Person(
            username: "user",
            password: "1",
            titleName: "Anton Boev",
            personName: "Антон",
            personSurname: "Боев",
            personDateOfBirth: "33",
            personWork: "Будущий разработчик IOs",
            personHobby: "Автомобили",
            contactNumber: "89031180745",
            contactEmail: "boev03@gmail.com",
            contactCity: "Москва",
            bioHistory: "Родился в 1989 году в городе Москве. Закончил школу и поступил в МФПА (с 2011 года Синергия). Получил диплом маркетолога уже работая по специальности. 15 лет работал организатором мероприятий. Делал самые сложные мероприятия с автомобилями. В 2022 году жена помогла собраться с мыслями и пойти учиться на новую специальность."
        )
    }
}
