//
//  PrimeModal.swift
//  ComposableArchitecture
//
//  Created by Rodrigo  Candido on 6/6/22.
//

import SwiftUI

struct PrimeModal: View {
    
    /**
     @Environment(\.presentationMode) var presentation
     */
    
    @ObservedObject var state: AppState
    
    var body: some View {
        VStack {
            
            if self.state.count.isPrime() {
                Text("Yeeeeaaah!! \(self.state.count) is prime...")
                saveRemoveView
                    .padding()
            } else {
                Text("Oooopsss... \(self.state.count) is not prime...")
            }
        }
    }
    
    
    
    /// Return a Button view with an action to add or remove item
    var saveRemoveView: some View {
        return self.state.favoritePrimes
            .contains(self.state.count)
        ? Button {
            self.state.favoritePrimes.removeAll {
                $0 == self.state.count
            }
        } label: { Text("REMOVE from favorite primes")}
        : Button {
            self.state.favoritePrimes.append(self.state.count)
        } label: { Text("SAVE from favorite primes")}
    }
}

struct PrimeModal_Previews: PreviewProvider {
    static var previews: some View {
        PrimeModal(state: AppState())
    }
}
