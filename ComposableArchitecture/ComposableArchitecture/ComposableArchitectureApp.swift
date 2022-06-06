//
//  ComposableArchitectureApp.swift
//  ComposableArchitecture
//
//  Created by Rodrigo  Candido on 4/6/22.
//

import SwiftUI

@main
struct ComposableArchitectureApp: App {
    
    /// **APPLE DOC**
    ///
    /// \@StateObjectA property wrapper type that instantiates an observable object.
    ///
    /// Create a state object in a ``SwiftUI/View``, ``SwiftUI/App``, or
    /// ``SwiftUI/Scene`` by applying the `@StateObject` attribute to a property
    /// declaration and providing an initial value that conforms to the
    /// <doc://com.apple.documentation/documentation/Combine/ObservableObject>
    /// protocol:
    ///
    ///     @StateObject var model = DataModel()
    ///
    /// SwiftUI creates a new instance of the object only once for each instance of
    /// the structure that declares the object. When published properties of the
    /// observable object change, SwiftUI updates the parts of any view that depend
    /// on those properties
    ///
    /// You can alternatively add the object
    /// to the environment of a view hierarchy by applying the
    /// ``SwiftUI/View/environmentObject(_:)`` modifier:
    ///
    ///```
    ///  @EnvironmentObject var model: DataModel
    ///  ...
    ///     ContentView()
    ///         .environmentObject(model)
    ///```
    ///
    /// In this case appState will be inject
    @StateObject var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            ContentView(state: appState)
        }
    }
}
