//
//  ContentView.swift
//  HP_API
//
//  Created by Turma01-8 on 09/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        
        NavigationStack{
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ScrollView{
                VStack {
                        AsyncImage(url: URL(string: "https://tm.ibxk.com.br/2021/04/19/19134256944230.jpg?ims=1200x675"))
                        { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                            
                        } placeholder: {
                            Color.gray
                        }
                        .frame(width: 300, height: 300)
                        .ignoresSafeArea()
                        .cornerRadius(50)
                        Spacer()
                    
                    
                    ForEach(viewModel.chars){ e in
                        NavigationLink(destination: PersonagensView(receber: e)) {
                            HStack{
                                AsyncImage(url: URL(string: e.image!))
                                { image in
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                } placeholder: {
                                    Color.gray
                                }
                                .frame(width: 80, height: 80)
                                .padding()
                                VStack{
                                    Text(e.name!)
                                        .foregroundStyle(.white)
                                    Text(e.house!)
                                        .foregroundStyle(.white)
                                }
                                Spacer()
                                    .padding()
                            }
                        }
                    }
                }
                }
            }
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color.blue,
        Color.black,Color.black]), startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
        .onAppear(){
                viewModel.fetch()
            }
    }
}

#Preview {
    ContentView()
}
