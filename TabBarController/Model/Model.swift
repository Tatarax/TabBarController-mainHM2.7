//
//  Model.swift
//  TabBarController
//
//  Created by Dinar on 19.12.2022.
//

import Foundation

struct Person {
    let aboutMe: String
    let personEducation: Education
    let personWork: Work
    let personHobby: Hobby
    let user: User
    let event: Events
    static func getPerson() -> Person {
       Person(aboutMe: "Меня зовут Динар, мне 26 годиков и я делаю это ДЗ уже не первую неделю, надеюсь что-то получится",
              personEducation: Education(education: "ВУЗ: Казанский Государственный архитектурно-строительный университет. Специальность: Промышленное гражданское строительство. Год окончания: 2018"),
              
              personWork: Work(work: "Живу в г. Санкт-Петербург. Работаю в строительной компании ООО СК Монолит, занимаемая должность неофициальная - Инженер по интересным вопросам, официальная должность - Начальник производственно технического отдела"),
              
              personHobby: Hobby(hobby: "Покурить хороший кальян и летать на одномоторном самолете, конечно все это делаю по отдельности)"),
              user: User(
                userEmail: "agent@bk.ru",
                userPhone: "8-999-233-33-99",
                userLoginVk: "agent3399",
                userPasswordVk: "admin3399"),
              event: Events(birthdayCat: "cats",
                            movies: "movies",
                            flightPlane: "plane"))
    }
}

struct Education {
    let education: String
}

struct Work {
    let work: String
}

struct Hobby {
    let hobby: String
}

struct User {
    let userEmail: String
    let userPhone: String
    let userLoginVk: String
    let userPasswordVk: String
}

struct Events {
    let birthdayCat: String
    let movies: String
    let flightPlane: String
}
