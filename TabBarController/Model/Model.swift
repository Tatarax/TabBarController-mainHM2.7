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
    
    static func getPerson() -> Person {
       Person(aboutMe: "Меня зовут Динар, мне 26 годиков и я делаю это ДЗ уже не первую неделю, надеюсь что-то получится",
              personEducation: Education(education: "ВУЗ: Казанский Государственный архитектурно-строительный университет, специальность: Промышленное гражданское строительство, год окончания: 2018"),
              
              personWork: Work(work: "Живу в г. Санкт-Петербург, работаю в строительной компании СК Монолит, занимаемая должность неофициальная - Инженер по интересным вопросам, официальная должность - Начальник производственно технического отдела"),
              
              personHobby: Hobby(hobby: "покурить кальян и летать на одномоторном самолете"))
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
