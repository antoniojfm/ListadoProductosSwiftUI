//
//  ContentView.swift
//  ListadoProductos_AntonioJesus
//
//  Created by estech on 20/2/23.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuItem].self, from: "productos.json")
    
        var body: some View {
            NavigationStack {
                List {
                    ForEach(menu) { item in
                        Text(item.title)
                        
                    }
                }
                .navigationTitle("Menu")
                .listStyle(GroupedListStyle())
                .navigationDestination(for: MenuItem.self) { item in
                    //ItemDetail(item: item)
                }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
