//
//  ContentView.swift
//  ComposableArchitecture
//
//  Created by Rodrigo  Candido on 4/6/22.
//

import SwiftUI

struct ContentView: View {
    
    /// **APPLE DOC:**
    /// \@ObservedObject
    /// Is property wrapper type that subscribes to an observable object and
    /// invalidates a view whenever the observable object changes.
    @ObservedObject var state: AppState
    
    var body: some View {
        NavigationView {
            List {
                /// Counter view also requieres a ObservedObject to
                /// work with. So, we pass our current property
                /// state to it
                NavigationLink(destination: CounterView(state: state)) {
                    Text("Counter demo")
                }
                
                NavigationLink(destination: EmptyView()) {
                    Text("Favorite primes")
                }
            }
            .listStyle(.plain)
            .navigationTitle("State Management")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(state: AppState())
            .environmentObject(AppState())
    }
}
