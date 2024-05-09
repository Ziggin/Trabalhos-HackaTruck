//
//  Model.swift
//  HP_API
//
//  Created by Turma01-8 on 09/05/24.
//

import Foundation

struct Wand: Codable {
    let wood: String?
    let core: String?
    let lenght: Double?
    }

struct HaPo: Codable, Identifiable{
    let id : String
    let name: String?
    let alternate_names: [String]?
    let species: String?
    let gender: String?
    let house: String?
    let dateOfBirth: String?
    let yearOfBirth: Int?
    let wizard: Bool?
    let ancestry: String?
    let eyeColour: String?
    let lethairColour: String?
    let wand: Wand
    let patronous: String?
    let hogwartsStudent: Bool?
    let hogwartsStaff: Bool?
    let actor: String?
    let alternate_actors: [String]?
    let alive: Bool?
    let image: String?
}
