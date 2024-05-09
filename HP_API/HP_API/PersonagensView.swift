//
//  PersonagensView.swift
//  HP_API
//
//  Created by Turma01-8 on 09/05/24.
//

import SwiftUI

struct PersonagensView: View {
    
    @State var receber: HaPo
    
    var body: some View {
        Text(receber.name!)
        Text(receber.actor!)
    }
}

#Preview {
    PersonagensView(receber: HaPo(id: "", name: "TESTE", alternate_names: [], species: "", gender: "", house: "", dateOfBirth: "", yearOfBirth: 1, wizard: false, ancestry: "", eyeColour: "", lethairColour: "", wand: Wand(wood: "", core: "", lenght: 0.0), patronous: "", hogwartsStudent: false, hogwartsStaff: false, actor: "TESTE", alternate_actors: [], alive: false, image: ""))
}
