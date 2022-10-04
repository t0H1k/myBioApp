//
//  PersonalData.swift
//  myBioApp
//
//  Created by Anton Boev on 04.10.2022.
//

struct PersonalData {
    let titleName: String
    let personBio: [String: String]
    let contactInfo: [String: Any]
    let bioHistory: String
    
    static func getPersonalData() -> PersonalData {
        PersonalData(
            titleName: "Anton Boev",
            personBio: ["Имя" : "Антон",
                        "Фамилия" : "Боев",
                        "Возраст" : "33",
                        "Работа" : "Будущий разработчик IOs",
                        "Хобби" : "Автомобили"],
            contactInfo: ["phone": 89031180745,
                          "email": "boev03@gmail.com",
                          "country": "Москва"],
            bioHistory: """
Родился в 1989 году в городе Москве.
Закончил школу и поступил в МФПА (с 2011 года "Синергия).
Получил диплом маркетолога уже работая по специальности.
15 лет работал организатором мероприятий.
Делал самые сложные мероприятия с автомобилями.
В 2022 году жена помогла собраться с мыслями и пойти учиться на новую специальность.
"""
        )
    }
}


