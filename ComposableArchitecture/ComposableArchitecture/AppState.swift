//
//  AppState.swift
//  ComposableArchitecture
//
//  Created by Rodrigo  Candido on 4/6/22.
//

import Foundation
import SwiftUI



/// **APPLE DOC**
/// ``ObservableObject`` is a type of object with a publisher that emits before the object has changed.
/// By default an ``ObservableObject`` synthesizes an ``ObservableObject/objectWillChange-2oa5v`` publisher that emits the changed value before any of its `@Published` properties changes.
///
/// **AppState** keeps a "copy" for all app current state
class AppState: ObservableObject {
    @Published var count = 0
}
