//
//  CounterView.swift
//  ComposableArchitecture
//
//  Created by Rodrigo  Candido on 4/6/22.
//

import SwiftUI

struct CounterView: View {
    
    
    // Whenever the state changes the view will be re-rendered
    // with the new State value
    
    
    /// This wrapped property allow first to have a property like so
    /// and the common access to it
    ///
    ///
    ///
    /// **self.count = 1 ...**
    ///
    /// Also it allows the access to the wrapper @Binding
    /// Which is accessed through $
    ///
    /// **self.$count => Binding<Int>**
    ///
    ///
    /// \@State is recomended for local, not recomended for views
    /// that pass the state forward
    //    @State private var count: Int = 0
    
    
    /// Object Binding(OBSERVED OBJECT) is provided by SwiftUI whenever the
    /// final intention is to persist
    /// Work more or less as \@State execept that DEV must "describe"
    /// how the mutations of the state can take place and how SwiftUI
    /// system will be notified
    /// Think more like a GLOBAL object
    @ObservedObject var state: AppState
    
    
    // To handle Modal when is prime is tap
    @State private var isPrimeModalShown: Bool = false

    
    var body: some View {
        VStack {
            HStack {
                //
                Button {
                    self.state.count -= 1
                } label: {
                    Text("-")
                }
                .disabled(self.state.count <= 0)
                //
                Text("\(self.state.count)")
                //
                Button {
                    self.state.count += 1
                } label: {
                    Text("+")
                }
            }
            
            //
            Button {
                isPrimeModalShown = true
            } label: {
                Text("Is this prime?")
            }
            
            //
            Button {} label: {
                Text("What is the \(self.state.count.ordinalFormat()) prime?")
            }

                
        }
        .font(.title)
        .navigationBarTitle("Counter Demo")
        .sheet(isPresented: $isPrimeModalShown) {
            PrimeModal(state: self.state)
                
        }
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView(state: AppState())
            .environmentObject(AppState())
    }
}
