//
//  ContentView.swift
//  Lists
//
//  Created by scholar on 8/11/23.
//

import SwiftUI

struct ContentView: View {
    
    private var colorsArray: [Color] = [.pink, .blue, .cyan, .mint, .indigo]
    
    var body: some View {
        
        NavigationStack  {
           
            
            
            
            List(colorsArray, id: \.self) {
                individualColor in
                
               
                NavigationLink(destination: individualColor.ignoresSafeArea()) {
                    
                    Text(individualColor.description)
                    Text("H")
                }
                    
                    
            }.navigationTitle("Cool Colors").listStyle(.plain)

                
            }
            
        }
        
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

