//
//  ContentView.swift
//  Grades_v4
//
//  Created by Jakob Erlebach on 29.02.24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var storage: storageclass
    var body: some View {
        ZStack{
            
            Section{
                NavigationView{
                    ScrollView{
                        Divider()
                        ForEach(storage.fächer, id: \.self) { fach in
                            Button(action: {
                                storage.activeview = .fach
                            }, label: {
                                Fachkachel(fachspeicher: fach)
                            })
                            
                            
                        }
                        
                    }.navigationBarItems(leading: Button(action: {
                        
                    }){
                        Button(action: {
                            startsreen()
                        }, label: {
                            HStack{
                                Image(systemName: "chevron.backward")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                
                                    .foregroundColor(.blue)
                                
                            Text("Zurück")
                            }
                        })
                        
                        
                    } )
                    .navigationBarItems(trailing: Button(action: {
                        storage.addfach = true
                    }){
                        Image(systemName: "plus.rectangle.on.folder.fill")
                            .resizable()
                            .scaledToFit()
                            .padding(4)
                            .frame(width: 45, height: 35)
                        
                            .foregroundColor(.blue)
                    } )
                    .navigationTitle("Grades").frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            if storage.addfach{
                VisualEffectView(effect: UIBlurEffect(style: .dark))
                    .ignoresSafeArea(edges: .all)
                    
                addfileview(storage: storage)
                    .padding(.horizontal, UIScreen.main.bounds.width / 6)

            }
        }
    }
}


struct VisualEffectView: UIViewRepresentable {
    var effect: UIVisualEffect?
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIVisualEffectView { UIVisualEffectView() }
    func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<Self>) { uiView.effect = effect }
}

#Preview {
    Wrapper()
}
